function [image] = PatternsToImage(patterns)
% Takes a cell array of 2x2 uint8 patterns and converts it to a grayscale
% image (a 2D uint8 array) so that it can be displayed and saved
% Input: A 2D cell array of 2x2 patterns (uint8 arrays)
% Output: A 2D array of uint8 values (i.e. a greyscale image) with the
% pixels assembled from the patterns into a single image.
% Author: Ed Allison


% Get the dimensions of the patterns array, and create the image array,
% which is twice the size
[rows, cols] = size(patterns);
image = uint8(zeros(2*rows, 2*cols));

% Iterate through each cell of the patterns array
for i = 1:rows
    for j = 1:cols
        
        % Set the pixels of the image to the corresponding values from
        % within each cell in the patterns array
        image(i*2-1:i*2,j*2-1:j*2) = patterns{i,j};
        
    end
end

end

