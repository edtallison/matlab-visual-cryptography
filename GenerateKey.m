function [key] = GenerateKey(randArray,patterns)
% Assembles a 2D cell array to act as a key, where each array element is a
% 2x2 uint8 pattern selected at random. The patterns are passed in using a 
% 1D cell array and then randomly assigned to the 2D cell array based on 
% values in a 2D array of random values (that range from 1 to 6 inclusive)
% Inputs:   randArray - A 2D array of random integers between 1 and 6
%                       inclusive.
%           patterns - A 1x6 cell array containing 6 patterns (each a 2x2
%                       uint8 array).
% Output:   A 2D cell array containing patterns to act as a key. Each element
%           of the array will be a pattern stored as a 2x2 array of uint8 values.
% Author: Ed Allison

% Get the dimensions of the input random array, and use these dimensions to
% create the key (output) array
[rows,cols] = size(randArray);
key = cell(rows, cols);

% Iterate through each element in the random array
for i = 1:rows
    for j = 1:cols
        
        % Set the corresponding element in the key array to the correct
        % pattern, selected from the patterns array
        key{i,j} = patterns{randArray(i,j)};
        
    end
end

end