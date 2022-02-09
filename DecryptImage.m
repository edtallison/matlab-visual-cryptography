function [decrypted] = DecryptImage(cipher,key)
% This function decrypts a cipher image, using the key image.
% Inputs:   1) A 2D array of uint8 values containing the black and white
%               cipher image.
%           2) A 2D array of uint8 values containing the black and white
%               key image.
% Output: A 2D array of uint8 values containing the decrypted image
% (greyscale). The same size as the key.
% Author: Ed Allison

% Get the dimensions of the cipher image, and use these to create the
% decrypted image array of the same size
[rows, cols] = size(cipher);
decrypted = uint8(zeros(rows, cols));

% Iterate through the pixels of each image to compare them
for i = 1:rows
    for j = 1:cols
        
        % If the pixels are different colours, set the decrypted pixel to
        % black
        if xor(cipher(i,j) == 0, key(i,j) == 0)
            decrypted(i,j) = 0;
            
        % If the pixels are the same colour, set the decrypted pixel to
        % white
        else
            decrypted(i,j) = 255;
        end
    end
end

end

