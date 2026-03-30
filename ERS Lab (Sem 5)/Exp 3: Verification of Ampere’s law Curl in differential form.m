clc;
clear;

% Constants
mu0 = 4*pi*1e-7;

% Current density (assume uniform along z)
Jz = 1e6; % A/m^2

% Grid
x = linspace(-1,1,50);
y = linspace(-1,1,50);
[X,Y] = meshgrid(x,y);

% Avoid singularity at center
R = sqrt(X.^2 + Y.^2 + 1e-6);

% Magnetic field components (circular field)
Bx = -mu0 * Jz .* Y ./ (2*pi*R.^2);
By =  mu0 * Jz .* X ./ (2*pi*R.^2);
Bz = zeros(size(X));

% Compute curl using finite differences
[By_dx, By_dy] = gradient(By, x, y);
[Bx_dx, Bx_dy] = gradient(Bx, x, y);

% Curl (only z-component matters)
curl_Bz = By_dx - Bx_dy;

% Expected RHS
rhs = mu0 * Jz;

% Display average comparison
disp('Average Curl(B)_z:');
disp(mean(curl_Bz(:)));

disp('Expected mu0 * Jz:');
disp(rhs);

% Plot
figure;
surf(X,Y,curl_Bz);
title('Curl(B)_z');
xlabel('x'); ylabel('y'); zlabel('Curl(B)_z');

figure;
surf(X,Y,ones(size(X))*rhs);
title('mu0 * Jz');
xlabel('x'); ylabel('y'); zlabel('mu0 Jz');