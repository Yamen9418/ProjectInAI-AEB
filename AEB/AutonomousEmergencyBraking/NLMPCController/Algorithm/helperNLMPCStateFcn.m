function dxdt = helperNLMPCStateFcn(x,u,m,Iz,Cf,Cr,lf,lr,tau)
% This function represents the state derivative equation for the augmented
% vehicle dynamics model.  
%
% States x = [  lateral velocity (Vy)
%               yaw rate (psi_dot)
%               longitudinal velocity (Vx)
%               longitudinal acceleration (Vx_dot)
%               lateral deviation (e1)
%               relative yaw angle (e2)
%               output disturbance of relative yaw angle (xOD)];
%
% Inputs u = [  acceleration
%               steering angle
%               road curvature * Vx (measured disturbance)
%               white noise (unmeasured disturbance)];
%  m            Total mass of vehicle                          (kg)
% Iz            Yaw moment of inertia of vehicle               (m*N*s^2)
% lf            Longitudinal distance from c.g. to front tires (m)
% lr            Longitudinal distance from c.g. to rear tires  (m)
% Cf            Cornering stiffness of front tires             (N/rad)
% Cr            Cornering stiffness of rear tires              (N/rad)
% tau           Longitudinal time constant (throttle)          (N/A)
%
% Outputs:
%     dxdt = state derivatives
%
%   This is a helper function for example purposes and may be removed or
%   modified in the future.


% Copyright 2021 The MathWorks, Inc.

%#codegen

%% State Equations
a1 = -(2*Cf+2*Cr)/m/x(3); 
a2 = -(2*Cf*lf-2*Cr*lr)/m/x(3) - x(3);
a3 = -(2*Cf*lf-2*Cr*lr)/Iz/x(3);
a4 = -(2*Cf*lf^2+2*Cr*lr^2)/Iz/x(3);
b1 = 2*Cf/m;
b2 = 2*Cf*lf/Iz;
dxdt = x;
dxdt(1) = a1*x(1) + a2*x(2) + b1*u(2);  % Vy
dxdt(2) = a3*x(1) + a4*x(2) + b2*u(2);  % psi_dot
dxdt(3) = x(2)*x(1) + x(4);             % Vx
dxdt(4) = (1/tau)*(-x(4) + u(1));       % Vx_dot
dxdt(5) = x(1) + x(3)*x(6);             % e1
dxdt(6) = x(2) - u(3);                  % e2
dxdt(7) = u(4);                         % xOD
