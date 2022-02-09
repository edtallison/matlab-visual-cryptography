function [patterns] = ImageToPatterns(image)
% This function converts an image into a cell array of 2x2 uint8 patterns
% so that the patterns can be more easily worked with.
% Input: A 2D array of uint8 values containing black and white pixels
% Output: A 2D cell array of 2x2 patterns extracted from the image. Each
% element of the cell array will be a pattern stored as a 2x2 array of
% uint8 values.
% Author: Ed Allison

% Get the dimensions of the input image
[rows, cols] = size(image);

% Create the patterns cell array, which is half the size of the input image
patterns = cell(uint8(rows/2), uint8(cols/2));
[rowsPat, colsPat] = size(patterns);

% Iterate through the elements of the patterns array
for i = 1:rowsPat
    for j = 1:colsPat
        % Set each pattern to the corresponding pixels from the image
        patterns{i,j} = image(i*2-1:i*2,j*2-1:j*2);
    end
end

end

