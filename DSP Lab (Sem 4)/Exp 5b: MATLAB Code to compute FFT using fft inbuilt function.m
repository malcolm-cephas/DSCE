clc;
clear all;
close all;
% Define the signal
x = [1, 2, 3, 4];
% Length of the signal
N = length(x);
%FFT
XK=fft(x)
magnitude_spectrum = abs(XK)
phase_spectrum = angle(XK)
%plot of original signal and fft signal
subplot(3, 1, 1);
stem(x);
xlabel('no. of samples');
ylabel('Magnitude');
title('Original Signal');
% Plot magnitude spectrum
subplot(3, 1, 2);
stem(0:N-1, magnitude_spectrum);
xlabel('Frequency (k)');
ylabel('Magnitude');
title('Magnitude Spectrum');
% Plot phase spectrum
subplot(3, 1, 3);
stem(0:N-1, phase_spectrum);
xlabel('Frequency (k)');
ylabel('Phase (radians)');
title('Phase Spectrum');

