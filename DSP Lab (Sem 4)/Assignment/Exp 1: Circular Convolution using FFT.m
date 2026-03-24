clc;
clear;
close all;

% Input sequences
x = input('Enter first sequence x[n]: ');
h = input('Enter second sequence h[n]: ');

% Length of sequences
N = max(length(x), length(h));

% Zero-padding to make equal length
x = [x zeros(1, N - length(x))];
h = [h zeros(1, N - length(h))];

% Compute FFT
X = fft(x);
H = fft(h);

% Multiply in frequency domain
Y = X .* H;

% Inverse FFT to get circular convolution
y = ifft(Y);

% Display result
disp('Circular Convolution Result:');
disp(real(y));   % Take real part to avoid imaginary errors