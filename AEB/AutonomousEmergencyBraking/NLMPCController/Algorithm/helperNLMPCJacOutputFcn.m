function [y] = helperNLMPCJacOutputFcn(x,u,m,Iz,Cf,Cr,lf,lr,tau)
% Analytical Jacobian for output function to improve computational
% efficiency.
%
% Inputs:
%           x: current state values
%           u: current input values
%           m: Total mass of vehicle                          (kg)
%          Iz: Yaw moment of inertia of vehicle               (m*N*s^2)
%          lf: Longitudinal distance from c.g. to front tires (m)
%          lr: Longitudinal distance from c.g. to rear tires  (m)
%          Cf: Cornering stiffness of front tires             (N/rad)
%          Cr: Cornering stiffness of rear tires              (N/rad)
%         tau: Longitudinal time constant (throttle)          (N/A)
% Outputs:
%           y: Output vector - [Vx e1 e2+x_od]
%
%   This is a helper function for example purposes and may be removed or
%   modified in the future.


% Copyright 2021 The MathWorks, Inc.

%#codegen
y = [0 0 1 0 0 0 0;0 0 0 0 1 0 0;0 0 0 0 0 1 1];

