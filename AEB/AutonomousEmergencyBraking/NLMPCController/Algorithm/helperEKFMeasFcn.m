function y = helperEKFMeasFcn(x)
% Measurement function used by the Extended Kalman Filter block.
%
% Inputs:
%           x: Current state values
% Outputs:
%           y: Output vector - [Vx e1 e2+x_od]
%
%   This is a helper function for example purposes and may be removed or
%   modified in the future.

% Copyright 2021 The MathWorks, Inc.

%#codegen
y = [x(3);x(5);x(6)+x(7)];


