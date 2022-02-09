function [outValue] = AlterByOne(inValue)
% This function adds one to a uint8 value in the range 0 to 255 inclusive,
% unless the value is 255, in which case it subtracts one.
% Input: A uint8 value between 0 and 255 inclusive
% Output: A uint8 value that is one more (or one less if the input is 255)
% Author: Ed Allison

% Check if the input value is between zero and 254 inclusive (to be
% increased by one)
if inValue < 255
    
    outValue = uint8(inValue + 1);
    
% If the input value is 255, subtract one
else
    
    outValue = uint8(inValue - 1);
    
end

