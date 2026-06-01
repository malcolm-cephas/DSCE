clc; clear; close all;

N = 8;
n = 0:N-1;

x = cos(2*pi*n/N);

% DTFS of original signal
X = fft(x);

% Time shift
n0 = 2;
x_shift = circshift(x, n0);

% DTFS of shifted signal
X_shift = fft(x_shift);

% Theoretical DTFS after shift
k = 0:N-1;
X_theory = X .* exp(-1j*2*pi*k*n0/N);

figure;

subplot(3,1,1);
stem(k, abs(X), 'filled');
title('Original DTFS');
grid on;

subplot(3,1,2);
stem(k, abs(X_shift), 'filled');
title('Shifted Signal DTFS');
grid on;

subplot(3,1,3);
stem(k, abs(X_theory), 'filled');
title('Theoretical DTFS after Shift');
grid on;

disp('Compare shifted DTFS with theoretical result');