clc; clear; close all;

N = 16;
n = 0:N-1;

% Multi-frequency signal
x = cos(2*pi*2*n/N) + 0.5*cos(2*pi*4*n/N);

X = fft(x);

figure;
stem(0:N-1, abs(X), 'filled');
title('DTFS of Multi-Frequency Signal');
xlabel('k');
ylabel('|X(k)|');
grid on;