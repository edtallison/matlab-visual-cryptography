function [complement] = ImageComplement(inputImg)
% Takes in a greyscale image, and swaps the black pixels for white and
% white pixels for black.
% Input: A 2D array of uint8 values representing black and white pixels
% (i.e. a greyscale image)
% Output: A 2D array of uint8 values representing the complement of the
% input image
% Author: Ed Allison

% Get the dimensions of the input image
[rows, cols] = size(inputImg);

%Create the array for the output image, as the same size as the input
complement = uint8(zeros(rows, cols));

% Iterate through each pixel in the image
for i = 1:rows
    for j = 1:cols
        
        % Set each pixel in the output to be the complement of the
        % corresponding pixel in the input
        complement(i,j) = 255 - inputImg(i,j);
        
    end
end


end
