function [cipherPatterns] = EncryptImage(binary,keyPatterns)
% This function encrypts a plain image using a key array of patterns (a 
% cell array containing 2x2 patterns), to obtain an encrypted cipher array
% of patterns (a cell array containing 2x2 patterns)
% Inputs:   1) A 2D array of uint8 values containing the black and white
%               (binary) plain image to encrypt.
%           2) A 2D cell array of 2x2 (uint8) patterns that act as a key 
%               array of patterns
% Output: A 2D cell array of 2x2 (uint8) patterns which is our cipher array
%         of patterns (created by encrypting the plain binary image)
% Author: Ed Allison

% Get the dimensions of the binary image, and use these to create the cell
% array for the cipher patterns
[rows, cols] = size(binary);
cipherPatterns = cell(rows,cols);

% Iterate through each pixel of the binary image
for i = 1:rows
    for j = 1:cols
        
        % For dark pixels, set the corresponding cell in cipherPatterns to
        % the complement of the corresponding pattern in keyPatterns
        if binary(i,j) < 128
            cipherPatterns{i,j} = ImageComplement(keyPatterns{i,j});
            
        % For light pixels, set the corresponding cell in cipherPatterns to
        % the corresponding pattern in KeyPatterns
        else
            cipherPatterns{i,j} = keyPatterns{i,j};
            
        end
    end
end

end

