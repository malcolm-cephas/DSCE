clc;
clear;
close all;

% Input sequences
x = input('Enter first sequence x[n]: ');
y = input('Enter second sequence y[n]: ');

% Compute cross-correlation
r = xcorr(x, y);

% Display result
disp('Cross-correlation sequence:');
disp(r);

% Plot result
n = -(length(y)-1):(length(x)-1);
stem(n, r);
xlabel('Lag (n)');
ylabel('r_{xy}(n)');
title('Cross-Correlation of x[n] and y[n]');
grid on;

