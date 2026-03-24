clc; close all; clear all;
n =1:9; % time index
d=3; % delay factor
x(n)=[2 1 4 3 6 9 8 7 5]; % i/p sequence
y(n) = n.* x(n) % system operation on i/p
yd=[zeros(1,d),y] % o/p delayed by „d‟
xd=[zeros(1,d),x(n)]; % i/p delayed by „d‟
n1=1:length(xd);
dy=n1.*xd % system operation on delayed i/p
% compare delayed o/p with o/p due to delayed i/p
if yd==dy
disp(„given system [y(n)=nx(n)]is a time invariant‟);
else
disp(„given system [y(n)=nx(n)]not a time invariant‟);
end
