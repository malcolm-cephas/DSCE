% Experiment No: 9
% FREQUENCY MODULATION AND DEMODULATION
% To generate and detect FM signal and to analyze its frequency spectrum.

clear all; 
close all; 
clc; 

t=0:0.01:10; 
Am=1; 
fm=0.5; 
Ac=1; 
fc=5; 

message_signal=Am*cos(2*pi*fm*t); 
carrier_signal=Ac*cos(2*pi*fc*t); 
freq_dev=4; 

sfm=Ac*cos(2*pi*fc*t+((freq_dev/fm)*sin(2*pi*fm*t))); 

subplot(2,2,1); 
plot(t,message_signal); 
xlabel('t'); 
ylabel('m(t)') 
title('Message signal'); 

subplot(2,2,2); 
plot(t,carrier_signal); 
xlabel('t'); 
ylabel('c(t)'); 
title('Carrier signal'); 

subplot(2,2,3); 
plot(t,sfm); 
xlabel('t'); 
ylabel('FM(t)'); 
title('Frequency modulated signal'); 

fs=20*fc; 
z=fmdemod(sfm,fc,fs,freq_dev); 

subplot(2,2,4); 
plot(t,z); 
xlabel('t'); 
ylabel('After demodulation m(t)'); 
title('Demodulated signal') 
