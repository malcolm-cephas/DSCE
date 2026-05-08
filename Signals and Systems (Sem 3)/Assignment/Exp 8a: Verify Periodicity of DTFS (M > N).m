clc; clear; close all;

N = 8;                  % Original period
M = 16;                 % M > N
n = 0:N-1;

x = cos(2*pi*n/N);      % periodic signal

% DTFS for N
X_N = fft(x, N);

% DTFS for M
X_M = fft(x, M);

figure;
subplot(2,1,1);
stem(0:N-1, abs(X_N), 'filled');
title('DTFS with period N');
grid on;

subplot(2,1,2);
stem(0:M-1, abs(X_M), 'filled');
title('DTFS with period M > N');
grid on;

disp('Observe repetition in DTFS coefficients');