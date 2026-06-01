clc;
clear all;
close all;
x = [1, 2, 3, 4];
% Length of the signal
N = length(x);
% Compute FFT using Cooley-Tukey algorithm
X = zeros(1, N);
for k = 1:N
X(k) = sum(x .* exp(-i*2*pi*(k-1)*(0:N-1)/N))
end
% Compute magnitude and phase spectra
magnitude_spectrum = abs(X)
phase_spectrum = angle(X)
%plot of original signal and fft signal
subplot(3, 1, 1);
stem(x);
xlabel('no. of samples');
ylabel('Magnitude');
title('Original Signal');