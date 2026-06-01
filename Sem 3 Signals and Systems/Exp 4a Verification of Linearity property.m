clc; close all; clear all;
n=0:40;
a1=input(„enter the scaling factor a1=‟);
a2=input(„enter the scaling factor a2=‟);
x1=cos(2*pi*0.1*n); % first i/p
x2=cos(2*pi*0.4*n); % second i/p
x3=a1*x1+a2*x2; % linear combination of i/p
% y(n)=n x(n) system operation
y1=n.*x1; % o/p due to first i/p
y2=n.*x2; % o/p due to second i/p
y3=n.*x3; % o/p for linear combination of i/p
yt=a1*y1+a2*y2; % linear combination of o/p
yt=round(yt); % round fractional value to nearest integer
y3=round(y3); % round fractional value to nearest integer
% compare output due to linear comb. of i/p with linear comb. of corresponding o/p
if y3 == yt
disp(„given system [y(n)=n.x(n)]is Linear‟);
else
disp(„given system [y(n)=n.x(n)]is non Linear‟);
end