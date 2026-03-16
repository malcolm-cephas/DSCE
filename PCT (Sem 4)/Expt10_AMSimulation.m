% Experiment No: 10
% AMPLITUDE MODULATION AND DEMODULATION
% To generate and detect AM signal and to analyze its frequency spectrum.

%% Amplitude Modulation 
%% 
clear all; 
close all; 
clc; 

% Inputs
fm=input('Enter the message signal frequency in Hz: '); 
%fm=0.5Hz 
Am=input('Enter the amplitude of the message signal: '); 
%Am=1V 
fc=input('Enter the carrier signal frequency in Hz: '); 
%fc=5Hz 
Ac=input('Enter the amplitude of the carrier signal: '); 
%Ac=1V 

t=-10:0.01:10; 
mt=Am*cos(2*pi*fm*t); 
ct=Ac*cos(2*pi*fc*t); 
mod_index=Am/Ac; 

st=Ac*(1+(mod_index)*cos(2*pi*fm*t)).*cos(2*pi*fc*t); 

subplot(4,1,1); 
plot(t,mt); 
xlabel('Time'); 
ylabel('m(t)'); 
title('Message Signal'); 

subplot(4,1,2); 
plot(t,ct); 
xlabel('Time'); 
ylabel('c(t)'); 
title('Carrier Signal'); 

subplot(4,1,3); 
plot(t,st); 
xlabel('Time'); 
ylabel('s(t)'); 
title('Amplitude modulated Signal'); 

[B A]=butter(2,0.1,'low'); 
d=st.*ct; 
fi=filter(B,A,d); 

subplot(4,1,4); 
plot(t,fi); 
%axis([-10 10 -1000 1000]); 
title('Demodulated Signal'); 

fs=100; 
f= -(fs/2):fs/length(t):(fs/2)-(fs/length(t))/2; 

figure;
subplot(4,1,1); 
plot(f,fftshift(fft(mt))); 
title('Message Fourier'); 

subplot(4,1,2); 
plot(f,fftshift(fft(ct))); 
title('Carrier Fourier'); 

subplot(4,1,3); 
plot(f,fftshift(fft(st))); 
title('Modulated Fourier'); 

subplot(4,1,4); 
mt_amplified=mt.*5; 
plot(f,fftshift(fft(fi))); 
title('Demodulated Fourier'); 
LineContent
