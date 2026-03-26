clc;
clear;
close all;

%% Continuous-Time Exponential Signal
t = 0:0.001:1;              % Time from 0 to 1 sec
x_ct = exp(2*t);           % CT exponential

figure;
plot(t, x_ct, 'LineWidth', 2);
title('Continuous-Time Exponential Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

%% Discrete-Time Exponential Signal
n = 0:20;                  % Discrete index
x_dt = exp(0.2*n);         % DT exponential

figure;
stem(n, x_dt, 'filled');
title('Discrete-Time Exponential Signal');
xlabel('n');
ylabel('Amplitude');
grid on;

%% Random Signal
n = 0:50;
x_rand = rand(1, length(n));   % Random values (0 to 1)

figure;
stem(n, x_rand, 'filled');
title('Random Signal');
xlabel('n');
ylabel('Amplitude');
grid on;