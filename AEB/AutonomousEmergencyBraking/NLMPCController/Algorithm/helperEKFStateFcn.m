function xk1 = helperEKFStateFcn(xk,u)
% State function used by the Extended Kalman Filter block.
%
% Inputs: 
%           xk: Current state values
%           u:  Current input values
% Outputs:
%           xk1: Updated state values based on xk and uk
%
%   This is a helper function for example purposes and may be removed or
%   modified in the future.


% Copyright 2021 The MathWorks, Inc.

uk = [u(1) u(2) u(3) u(4)];

Ts = u(5);
m =  u(6);
Iz = u(7);
Cf = u(8);
Cr = u(9);
lf = u(10);
lr = u(11);
tau = u(12);

xk1 = getDiscreteMdlForEKF(xk, uk, Ts, m, Iz, Cf, Cr, lf, lr, tau);
end

function xk1 = getDiscreteMdlForEKF(xk,uk,Ts, m, Iz, Cf, Cr, lf, lr, tau)
% This function uses the Euler method to discretize the augmented model
% used by the AEB controller. This discrete model is used by the
% Extended Kalman Filter to estimate the states of our ego car.
%#codegen

M = 10; % Discretize in 'M' steps. Higher the value of 'M', more the accuracy
delta = Ts/M;
xk1 = xk;
for ct=1:M
    xk1 = xk1 + delta*helperNLMPCStateFcn(xk1,uk,m,Iz,Cf,Cr,lf,lr,tau);
end

end
