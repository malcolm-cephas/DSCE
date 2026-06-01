clc;
clear;
close all;

% Specifications
fs = 1000;          % Sampling frequency (Hz)
fc = 200;           % Cutoff frequency (Hz)
n = 4;              % Filter order

% Normalize cutoff frequency
Wn = fc / (fs/2);   % (Nyquist frequency = fs/2)

% Design Butterworth high-pass filter
[b, a] = butter(n, Wn, 'high');

% Display coefficients
disp('Numerator coefficients (b):');
disp(b);
disp('Denominator coefficients (a):');
disp(a);

% Frequency response
[H, f] = freqz(b, a, 1024, fs);

% Plot magnitude response
figure;
plot(f, abs(H));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Butterworth High-Pass Filter Response');
grid on;