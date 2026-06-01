clc;
clear;
close all;

% Define time axis
t = -10:0.01:10;      % time vector
dt = t(2) - t(1);     % sampling interval

% Define continuous-time signal (example)
x = exp(-t.^2);       % Gaussian signal

% Energy in time domain
E_time = sum(abs(x).^2) * dt;

% Compute FFT
X = fft(x);
N = length(X);

% Frequency resolution
df = 1 / (N * dt);

% Energy in frequency domain
E_freq = sum(abs(X).^2) * df / N;

% Display results
fprintf('Energy in Time Domain     = %f\n', E_time);
fprintf('Energy in Frequency Domain = %f\n', E_freq);

% Check difference
fprintf('Difference = %e\n', abs(E_time - E_freq));