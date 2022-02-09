function [binary] = ExtractImage(hidden)
% This function extracts a black and white image that has been embedded
% within a colour image.
% Input: A 3D array of uint8 values (an RGB colour image) that contains a
%           hidden black and white image.
% Output: A 2D array of uint8 values of the black and white image that has
%           been hidden inside the colour image.
% Author: Ed Allison

%Get the dimensions of the colour image (rows and columns only)
[rows, cols, ~] = size(hidden);

%Create the array for the black and white image, with the same size as the
%input image
binary = uint8(zeros(rows,cols));

% Iterate through the pixels of the colour image
for i = 1:rows
    for j = 1:cols
        
        % Check if the sum of RGB values is even
        if mod((double(hidden(i,j,1)) + double(hidden(i,j,2)) + double(hidden(i,j,3))), 2) == 0
            
            %Set the binary pixel to black
            binary(i,j) = 0;
            
        else
            
            %If the RGB sum is odd, set the binary pixel to white
            binary(i,j) = 255;
        
        end
    end
end

end

