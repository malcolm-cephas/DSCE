% Define the original signal
clc;
clear all;
close all;
% Define the original signal
x = [1,2,3,4]
f=100;
w=(2*pi)/f;
% Compute the DFT of the original signal
X = fft(x)
% Define the amount of time shift (e.g., shift by 2 samples to the right)
shift_amount = 2;
% Perform time shifting on the signal
x_shifted = circshift(x, shift_amount);
% Compute the DFT of the shifted signal
X_shifted =exp(-i*w*shift_amount)*fft(x_shifted);
%to display the signals
disp('Original Signal:')
disp(x)
disp('DFT of Original Signal:')
disp(X)
disp('Shifted Signal:')
disp(x_shifted)
disp('DFT of Shifted Signal:')
disp(X_shifted)
% Verify if the DFT of the shifted signal matches the expected phase-shifted DFT of the original signal
if isequal(X_shifted, circshift(X, shift_amount))
disp('Time-shifting property of DFT verified: DFT of shifted signal matches phase-shifted DFT of original signal.');
else
disp('Time-shifting property of DFT not verified.');
end
