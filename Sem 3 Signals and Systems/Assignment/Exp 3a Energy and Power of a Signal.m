clc;
clear;
close all;

n = -10:10;
x = exp(-0.2*abs(n));   % Example signal

% Energy
E = sum(abs(x).^2);

% Power
P = (1/length(x)) * sum(abs(x).^2);

disp(['Energy = ', num2str(E)]);
disp(['Power = ', num2str(P)]);

% Plot
figure;
stem(n, x, 'filled');
title('Signal x(n)');
grid on;