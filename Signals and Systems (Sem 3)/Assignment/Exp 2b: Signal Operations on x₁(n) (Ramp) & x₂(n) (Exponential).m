clc;
clear;
close all;

n = 0:10;

% Define signals
x1 = n;              % Ramp signal
a = 0.8;
x2 = a.^n;           % Exponential signal

figure;

subplot(5,1,1);
stem(n, x1, 'filled');
title('Ramp Signal x1(n)');
grid on;

subplot(5,1,2);
stem(n, x2, 'filled');
title('Exponential Signal x2(n)');
grid on;

% Addition
y_add = x1 + x2;
subplot(5,1,3);
stem(n, y_add, 'filled');
title('Addition: x1(n) + x2(n)');
grid on;

% Multiplication
y_mul = x1 .* x2;
subplot(5,1,4);
stem(n, y_mul, 'filled');
title('Multiplication: x1(n) * x2(n)');
grid on;

% Scaling (dependent variable operation)
y_scale = 2 * x1;
subplot(5,1,5);
stem(n, y_scale, 'filled');
title('Scaling: 2*x1(n)');
grid on;