% Generate a random signal (or use any signal of your choice)
clc;
clear all;
close all;
x = randn(1, 100); % Random signal
% Calculate energy in the time domain (sum of squared values)
x_conj = conj(x);
energy_time_domain = sum(x.*x_conj);
% Compute Fourier transform
X = fft(x);
X_conj= conj(X);
% Calculate energy in the frequency domain (sum of squared magnitudes)
energy_freq_domain = sum(X.*X_conj) / length(X);
% Compare energies to verify Parseval's theorem
fprintf('Energy in the time domain: %f\n', energy_time_domain);
fprintf('Energy in the frequency domain: %f\n', energy_freq_domain);
% Check if energies are approximately equal
if abs(energy_time_domain - energy_freq_domain) < 1e-10
disp('Parseval''s theorem verified: Energy in time domain equals energy in frequency domain.');
else
disp('Parseval''s theorem not verified.');
end
