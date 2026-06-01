clc ; clear all ; close all;
x=input(' Enter x: ') ;
h=input('Enter h: ') ;
m=length(x);
n=length(h);
X=[x, zeros(1, n)];
H=[h, zeros(1, m)];
for i = 1 : n + m-1
y(i)=0;
for j=1:m
if (i-j+1>0)
y(i)=y(i)+X(j)*H(i-j+1);
end
end
end
disp('Convolution output is y(n)= ');
disp(y);
stem(y);
ylabel('y(n)');
xlabel(' -----> n');
title('Convolution output y(n)');