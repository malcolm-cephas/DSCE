function plot_and_measure_eye_diagram()
% Parameters
numSymbols = 1000; % Number of symbols to generate
samplesPerSymbol = 8; % Oversampling factor
snr = 20; % Signal-to-noise ratio in dB
% Generate random binary data
data = randi([0 1], numSymbols, 1);
% Map binary data to NRZ (Non-Return-to-Zero) format
txSignal = 2*data - 1; % Convert 0 -> -1 and 1 -> 1
% Upsample the signal (oversampling)
txSignal = upsample(txSignal, samplesPerSymbol);
% Apply a lowpass filter to simulate a practical transmission scenario
% Define a raised cosine filter (square root raised cosine)
rolloff = 0.3;
span = 10;
rcosFilter = rcosdesign(rolloff, span, samplesPerSymbol);
% Convolve the transmitted signal with the raised cosine filter
txFiltered = conv(txSignal, rcosFilter, 'same');
% Add Gaussian noise to the transmitted signal
noisySignal = awgn(txFiltered, snr, 'measured');
% Plot the eye diagram using the eyediagram function
eyediagram(noisySignal, 2*samplesPerSymbol);
grid on;
title('Eye Diagram of Noisy Signal with Raised Cosine Filtering');
xlabel('Time');
ylabel('Amplitude');
% Extract eye diagram data and measure eye height and width
[eyeHeight, eyeWidth] = measureEye(noisySignal, samplesPerSymbol);
% Display measured eye height and width
disp(['Measured Eye Height: ', num2str(eyeHeight)]);
disp(['Measured Eye Width: ', num2str(eyeWidth)]);
end
function [eyeHeight, eyeWidth] = measureEye(signal, samplesPerSymbol)
% Measure eye height and width from the eye diagram data
% Reshape the signal into segments of one symbol period
reshapedSignal = reshape(signal, samplesPerSymbol, []);
% Find the middle of the eye (samples around 0 crossing point)
middleIndex = floor(samplesPerSymbol / 2);
% Eye height: difference between max and min amplitude at the middle of the eye
maxAmp = max(reshapedSignal(middleIndex, :));
minAmp = min(reshapedSignal(middleIndex, :));
eyeHeight = maxAmp - minAmp;
% Eye width: time interval between the two crossings at the middle of the eye
% This is where the signal crosses 0 and the eye is open
zeroCrossings = findZeroCrossings(reshapedSignal(middleIndex, :));
if length(zeroCrossings) >= 2
eyeWidth = zeroCrossings(end) - zeroCrossings(1);
else
eyeWidth = 0; % Not enough zero crossings to measure
end
end
function zeroCrossings = findZeroCrossings(data)
% Find zero crossings in the data
zeroCrossings = [];
for i = 1:length(data)-1
if data(i) * data(i+1) < 0
zeroCrossings = [zeroCrossings, i];
end
end
end