clc;
clear;

% Constants
epsilon0 = 8.854e-12;
k = 1 / (4 * pi * epsilon0);

% Input
q = 1e-9; % Charge in Coulombs

% Observation point (x,y,z)
obs = [2, 1, 0];

% Charge location
charge_pos = [0, 0, 0];

% Distance vector
R = obs - charge_pos;
r = norm(R);

% Electric field
E = k * q * R / (r^3);

% Output
disp('Electric Field due to Point Charge (Ex Ey Ez):');
disp(E);