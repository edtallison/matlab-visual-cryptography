function [hidden] = EmbedImage(binary,colour)
% This function is used to embed a binary (black and white) image inside
% another colour image (i.e. a 3D array of uint8 values)
% Inputs:   1) A 2D array of uint8 values (greyscale image) to embed. Pixel
%               values either 0 or 255.
%           2) A 3D array of uint8 values (RGB image), that the greyscale
%               image will be embedded into.
% Output: A 3D array of uint8 values (i.e. and RGB colour image) that
% contains a hidden binary image.
% Author: Ed Allison

% Get the dimensions of the binary (black and white) image
[rows,cols] = size(binary);

% Create the hidden (output) array/image, setting it to be the same as the
% colour (input) image for now
hidden = colour;

% Iterate through each pixel in the binary image
for i = 1:rows
    for j = 1:cols
        
        % Check the value of the pixel in the binary image (black/white),
        % as well as the sum of the RGB values in the colour image (to see
        % if it is even or odd).
        
        % If the binary pixel is black, and the RGB sum is even, no change
        % is required.
        % If the binary pixel is white, and the RGB sum is odd, no change
        % is required.
        % Otherwise, we need to change the red value in the hidden image to
        % update the RGB sum.
        if xor( (binary(i,j) == 0) , mod((double(colour(i,j,1)) + double(colour(i,j,2)) + double(colour(i,j,3))), 2) == 0)
            
            % Change the sum of the RGB values in the hidden image to be
            % either odd or even, based on the conditions
            hidden(i,j,1) = AlterByOne(colour(i,j,1));
            
        end
    end
end

end

