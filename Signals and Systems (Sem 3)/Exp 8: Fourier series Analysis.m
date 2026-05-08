clc; clear all; close all;
N=input('Enter the fundamental period of the signal (N)');
M=input('Enter how many points of Fourier series to compute(M=N or M=multiples of N) ')
n=0:N-1;
x=[sin(2*pi*n/6)];
for k=0:M-1;
Sum=0;
for n=0:N-1;
Ck(k+1)=x(n+1)*exp(-j*2*pi*k*n/N);
Sum=Sum+Ck(k+1);
end
Ck(k+1)=Sum/N;
end
Ck=round(Ck,4); %To round the values of Ck for 4 decimal places
Mag=abs(Ck);
Phase_ang=angle(Ck);
disp(Ck); disp(Mag);
disp(Phase_ang);
subplot(311);
stem([0:length(x)-1],x);
xlabel('n-->'); ylabel('x(n)');
title('Input signal')
subplot(312);
stem([0:length(Ck)-1],abs(Ck));
xlabel('k'); ylabel('Magnitude');
title('Magnitude Spectrum');
subplot(313);
stem([0:length(Ck)-1],Phase_ang);
xlabel('k'); ylabel('Phase angle');
title('Phase Spectrum')