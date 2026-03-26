clc;
clear;
close all;

t = -5:0.01:5;             % Time axis
x = sin(t);                % Original signal

a1 = 2;                    % Compression
a2 = 0.5;                  % Expansion

x1 = sin(a1*t);            % Compressed signal
x2 = sin(a2*t);            % Expanded signal

figure;

subplot(3,1,1);
plot(t, x, 'LineWidth', 2);
title('Original Signal x(t)');
grid on;

subplot(3,1,2);
plot(t, x1, 'LineWidth', 2);
title('Time Compressed Signal x(2t)');
grid on;

subplot(3,1,3);
plot(t, x2, 'LineWidth', 2);
title('Time Expanded Signal x(0.5t)');
grid on;