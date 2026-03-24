clc;
clear all;
close all;
% Define filter specifications
passband_frequency = 500; % Passband frequency in Hz
stopband_frequency = 750; % Stopband frequency in Hz
passband_ripple = 3; % Passband ripple in dB
stopband_attenuation = 15; % Stopband attenuation in dB
fs = 2000; % Sampling frequency in Hz
omp=2*passband_frequency/fs;
oms=2*stopband_frequency/fs;
%to find cut off frequency & order of the filter
[N,Wn]=buttord(omp,oms,passband_ripple,stopband_attenuation)
disp('order of the filter n =');
disp(N);
disp('cut off frequency Wn= ');
disp(Wn);
%system function of the filter
[b,a]=butter(N,Wn,'low')
w=0:0.01:pi;
[h,om]=freqz(b,a,w,'whole');
m=abs(h);
an=angle(h);
subplot(2,1,1);
plot(om/pi,20*log(m));
grid;
ylabel('gain in dB');
17 | D e p t . o f E C E , D S C E
xlabel('normalized frequency');
subplot(2,1,2);
plot(om/pi,an);
grid;
ylabel('phase in radian');
xlabel('normalized frequency');
% to convert analog filter to digital filter
% using bilinear transformation
[bz,az]=bilinear(b,a,fs)
H_digital = tf(b,a, 1/fs)
disp('Transfer function (H(z)):');
disp(H_digital)