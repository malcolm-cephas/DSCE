clc; clear; close all;

N = 8;

% Define DTFS coefficients
X = [1 2 3 4 0 0 0 0];

% Inverse DTFS
x = ifft(X);

figure;
stem(0:N-1, real(x), 'filled');
title('Reconstructed Signal using IDTFS');
xlabel('n');
ylabel('x(n)');
grid on;

disp('Recovered signal:');
disp(real(x));