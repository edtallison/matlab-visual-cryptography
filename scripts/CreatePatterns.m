function [patterns] = CreatePatterns()
% This function creates a 1x6 cell array containing six special 2x2
% patterns of uint8 values, to be used for key generation.
% Inputs: None
% Output: A 1x6 cell array of six specific 2x2 patterns of uint8 values
% (representing greyscale images)
% Author: Ed Allison

% Create the patterns and store them in the output array
patterns = {uint8([255,255;0,0]),uint8([0,0;255,255]),uint8([0,255;0,255]),uint8([255,0;255,0]),uint8([0,255;255,0]),uint8([255,0;0,255])};


end

