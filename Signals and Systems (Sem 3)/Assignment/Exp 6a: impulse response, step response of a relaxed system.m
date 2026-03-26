clc;
clear;
close all;

% System coefficients
b = [1/3 1/3 1/3];        % Numerator
a = [1 -0.95 -0.9025];   % Denominator

n = 0:20;

%% -------- Impulse Response --------
x_imp = [1 zeros(1, length(n)-1)];   % delta(n)

h = filter(b, a, x_imp);

figure;
stem(n, h, 'filled');
title('Impulse Response h(n)');
xlabel('n');
ylabel('Amplitude');
grid on;

%% -------- Step Response --------
x_step = ones(1, length(n));   % u(n)

y = filter(b, a, x_step);

figure;
stem(n, y, 'filled');
title('Step Response y(n)');
xlabel('n');
ylabel('Amplitude');
grid on;