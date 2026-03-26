clc;
clear;
close all;

fs = 1000;                 % Sampling frequency (Hz)
t = 0:1/fs:0.1;            % Time vector (0.1 sec)

f1 = 50;                   % Frequency 1 (50 Hz)
f2 = 100;                  % Frequency 2 (100 Hz)

x = sin(2*pi*f1*t) + sin(2*pi*f2*t);

figure;
plot(t, x, 'LineWidth', 2);
title('Signal with 50 Hz and 100 Hz Components');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;