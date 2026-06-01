clc; clear all; close all;
Fs=100; 
Ts = 1/Fs;
t = 0:Ts:1-Ts;
f1=15; f2=20;

%Generate a multi frequency signal
x1=sin(2*pi*15*t);
x2=sin(2*pi*20*t);
x = x1+x2;
% Plot the signal
subplot(411);
plot(x1);
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Time domain plot of the signal1')
subplot(412);
plot(x2);
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Time domain plot of the signal2')
subplot(413);
plot(x);
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Time domain plot of the signal x')
%Find DFT of the signal
y = fft(x);
f = (0:length(y)-1)*Fs/length(y);
%Plot the spectrum of the signal
subplot(414);
plot(f,abs(y));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Frequency domain plot of the signal');