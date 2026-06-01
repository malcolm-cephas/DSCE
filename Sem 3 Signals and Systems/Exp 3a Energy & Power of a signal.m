%Only non-periodic and finite duration
%signals have finite energy
clc; clear all; close all;
x1=input('enter the input sequence');
e1=sum(abs(x1).^2);
disp('energy of given sequence is');e1
% program for energy of a signal of
%finite duration ramp signal
n=-5:14;
x2=n;
e2=sum(abs(x2).^2);
disp('energy of given signal is');e2
% program to find average power of a DT
%periodic signal of fundamental period N
% Find Average power of x=sin(2*pi*n/N)
N=50; n=0:N-1;
x=sin(2*pi*n/N);
stem(x);
P=sum(abs(x.^2))/N;
disp('power of given signal is');P
% program to find average power of a CT periodic signal of given frequency f Hz.
% find average power of x=cos(2*pi*f*t)
f=1;T=1/f;
fn=@(t) (cos(2*pi*t/T)).^2;
Pav=(1/T)*integral(fn,0,T);
disp('Average power is ');Pav