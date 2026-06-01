clc;
clear;

% Constants
epsilon0 = 8.854e-12;
k = 1 / (4 * pi * epsilon0);

% Point charge
q = 1e-9; % Coulombs
charge_pos = [0, 0, 0];

% Define rectangular surface in XY plane
% z = constant
z0 = 1;   % height of surface

% Surface limits
x_min = -1; x_max = 1;
y_min = -1; y_max = 1;

% Number of divisions
Nx = 100;
Ny = 100;

dx = (x_max - x_min) / Nx;
dy = (y_max - y_min) / Ny;

flux = 0;

% Normal vector (surface facing +z)
n = [0 0 1];

for i = 1:Nx
    for j = 1:Ny
        
        % Surface element center
        x = x_min + (i-0.5)*dx;
        y = y_min + (j-0.5)*dy;
        obs = [x, y, z0];
        
        % Vector from charge to surface element
        R = obs - charge_pos;
        r = norm(R);
        
        % Electric field
        E = k * q * R / (r^3);
        
        % dA vector
        dA = n * dx * dy;
        
        % Flux contribution
        dphi = dot(E, dA);
        
        flux = flux + dphi;
    end
end

% Output
disp('Electric Flux through the surface:');
disp(flux);