function [y] = helperNLMPCOutputFcn(x,u,m,Iz,Cf,Cr,lf,lr,tau)
% Output function that relates the states and inputs at the current control
% interval to the outputs.
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
%           
% Outputs:
%           y: Output vector - [Vx e1 e2+x_od]
%
%   This is a helper function for example purposes and may be removed or
%   modified in the future.


% Copyright 2021 The MathWorks, Inc.

%#codegen
y = [x(3);x(5);x(6)+x(7)];


