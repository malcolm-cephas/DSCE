clc;
clear;
close all;

% Input sequence
x = input('Enter the sequence x[n]: ');

% Length of sequence
N = length(x);

% Compute FFT
X = fft(x);

% Display result
disp('FFT of the sequence:');
disp(X);

% Plot magnitude and phase
k = 0:N-1;

figure;

subplot(2,1,1);
stem(k, abs(X));
xlabel('k');
ylabel('|X(k)|');
title('Magnitude Spectrum');
grid on;

subplot(2,1,2);
stem(k, angle(X));
xlabel('k');
ylabel('Phase (radians)');
title('Phase Spectrum');
grid on;