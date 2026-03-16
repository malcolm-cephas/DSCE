% Experiment No: 2
% Generate thermal noise and shot noise and plot the signals in time domain 

% Define parameters 
Fs = 1000; % Sampling frequency (Hz) 
T = 1; % Duration of the signal (seconds) 
 
% Time vector 
t = 0:1/Fs:T-1/Fs; 

% Generate thermal noise 
thermalNoise = randn(size(t)); 
 
% Generate shot noise 
lambda = 10; % Poisson parameter 
shotNoise = poissrnd(lambda, size(t)); 
 
% Plotting 
subplot(2, 1, 1); 
plot(t, thermalNoise); 
title('Thermal Noise'); 
xlabel('Time (s)'); 
ylabel('Amplitude'); 

subplot(2, 1, 2); 
plot(t, shotNoise); 
title('Shot Noise'); 
xlabel('Time (s)'); 
ylabel('Amplitude'); 
 
% Adjust subplot spacing 
sgtitle('Thermal Noise and Shot Noise'); 
