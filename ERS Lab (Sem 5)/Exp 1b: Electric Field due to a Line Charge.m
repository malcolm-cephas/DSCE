clc;
clear;

% Constants
epsilon0 = 8.854e-12;
k = 1 / (4 * pi * epsilon0);

% Line charge properties
lambda = 1e-9; % C/m
L = 2; % Length of line (meters)

% Observation point
obs = [1, 1, 0];

% Discretization
N = 1000;
dl = L / N;

E = [0 0 0];

% Line along x-axis from -L/2 to L/2
for i = 1:N
    x = -L/2 + (i-1)*dl;
    dq = lambda * dl;
    
    source = [x, 0, 0];
    
    R = obs - source;
    r = norm(R);
    
    dE = k * dq * R / (r^3);
    
    E = E + dE;
end

% Output
disp('Electric Field due to Line Charge (Ex Ey Ez):');
disp(E);