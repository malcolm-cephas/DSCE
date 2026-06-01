% Define the signal
clc;
clear all;
close all;
x = [1, 2, 3, 4];
% Length of the signal
N = length(x);
% Pad the signal with zeros to handle circular convolution
x_padded = [x, zeros(1, N-1)];
% Compute autocorrelation using circular convolution
autocorr_result = zeros(1, N);
for lag = 0:N-1
% Circularly shift the signal
x_shifted = circshift(x_padded, lag);
% Compute element-wise product and sum
autocorr_result(lag+1) = sum(x_padded .* x_shifted);
end
%Display the signals
disp('Original Signals')
disp(x)
disp('Padded signal')
disp(x_padded)
disp('Shifted Signal')
disp(x_shifted)
disp('autocorrelation')
disp(autocorr_result)
% Plot the autocorrelation result
lags = 0:N-1;
stem(lags, autocorr_result);
xlabel('Lag');
ylabel('Autocorrelation');
title('Autocorrelation of the signal');