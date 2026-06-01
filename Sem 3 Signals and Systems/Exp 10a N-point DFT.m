clc; close all; clear all;
xn = input('Enter the sequence for which DFT to be calculated = ');
N = input('Enter the the value of N for N-Point DFT = ');
n=[0:1:N-1]; 
k=[0:1:N-1]; 
WN=exp(-j*2*pi/N); 
nk=n'*k; 
WNnk=WN.^nk;
Xk=xn*WNnk

WNnkI= WN.^(-nk); 
xnI=(Xk*WNnkI)/N 
MagX=abs(Xk)
PhaseX=angle(Xk)*180/pi

subplot(3,1,1);
stem(xn);
xlabel('Time index ----> n');
ylabel('Magnitude');
title('Input Signal');
subplot(3,1,2);
stem(k,MagX);
xlabel('Frequency index ---->k');
ylabel('Magnitude');

title('Magnitude plot');
subplot(3,1,3);
stem(k,PhaseX);
xlabel('Frequency index ---->k');
ylabel('Phase angle in degree');
title('Phase plot');