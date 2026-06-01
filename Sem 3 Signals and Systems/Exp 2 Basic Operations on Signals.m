clc; clear all; close all;
% generating two input signals
t=0:.01:1;
x1=sin(2*pi*4*t);
x2=sin(2*pi*8*t);
subplot(2, 2, 1);
plot(t, x1);
xlabel('time');
ylabel('amplitude');
title('input signal 1');
subplot(2, 2, 2);
plot(t, x2);
xlabel('time');
ylabel('amplitude');
title('input signal 2');
% addition of signals
y1=x1+x2;
subplot(2, 2, 3);
plot(t, y1);
xlabel('time');
ylabel('amplitude');
title('addition of two signals');
% multiplication of signals
y2=x1.*x2;
subplot(2,2,4);
plot(t, y2);
xlabel('time');
ylabel('amplitude');
title('multiplication of two signals');
% scaling of a signal1
A=2;
y3=A*x1;
figure;
subplot(2, 2, 1);
plot(t, x1);
xlabel('time');
ylabel('amplitude');
title('input signal')
subplot(2, 2, 2);
plot(t, y3);
xlabel('time');
ylabel('amplitude');
title('amplified input signal');
% folding of a signal1
h=length(x1);
nx=0:h-1;
subplot(2, 2, 3);
plot(nx,x1);
xlabel('nx');
ylabel('amplitude');
title('input signal')
y4=fliplr(x1);
nf=-fliplr(nx);
subplot(2, 2, 4);
plot(nf, y4);
xlabel('nf');
ylabel('amplitude');
title('folded signal');
%shifting of a signal 1
figure;
subplot(3, 1, 1);
plot(t, x1);
xlabel('time t');
ylabel('amplitude');
title('input signal');
subplot(3, 1, 2);
plot(t+2, x1);
xlabel('t+2');
ylabel('amplitude');
title('right shifted signal');
subplot(3, 1, 3);
plot(t-2,x1);
xlabel('t-2');
ylabel('amplitude');
title('left shifted signal');
%operations on sequences
n1=1:1:9;
s1=[1 2 3 0 5 8 0 2 4];
figure;
subplot(2, 2, 1);
stem(n1, s1);
xlabel('n1');
ylabel('amplitude');
title('input sequence1');
s2=[1 1 2 4 6 0 5 3 6];
subplot(2, 2, 2);
stem(n1, s2);
xlabel('n2');
ylabel('amplitude');
title('input sequence2');
% addition of sequences
s3=s1+s2;
subplot(2, 2, 3);
stem(n1, s3);
xlabel('n1');
ylabel('amplitude');
title('sum of two sequences');
% multiplication of sequences
s4=s1.*s2;
subplot(2, 2, 4);
stem(n1, s4);
xlabel('n1');
ylabel('amplitude');
title('product of two sequences');