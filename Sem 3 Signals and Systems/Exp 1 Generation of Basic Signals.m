%discrete unit impulse sequence generation
clc; close all;
n=-3:4;
x=[n==0];
subplot(4,4,1);
stem(n,x);
xlabel('Time (sec)');
ylabel('Amplitude');
title('discrete unit impulse');
%continuous unit impulse signal generation
t=-3:.25:4; x=[t==0];
subplot(4,4,2);
plot(t,x);
xlabel('Time (sec)');
ylabel('Amplitude');
title('continuous unit impulse');
grid;
% discrete unit step sequence generation
n=-3:4;
y=[n>=0];
subplot(4,4,3);
stem(n,y);
xlabel('n')
ylabel('amplitude');
title('discrete unit step');
grid;
% continuous unit step signal generation
t=- 3:.025:4;
y=[t>=0];
subplot(4,4,4);plot(t,y);
xlabel('t');
ylabel('amplitude');
title('continuous unit step');
grid;
% continuous sinusoidal signal generator
t = - 5:.01:5;
x = sin(t);
subplot(4,4,9);
plot(t,x);
xlabel('Time (sec)');
ylabel('Amplitude');
title('continuous Sinusoidal Periodic Wave');
grid;
% discrete sinusoidal sequence generator
n = - 5:5;
x = sin(n);
subplot(4,4,10);
stem(n,x);
xlabel('Time (sec)');
ylabel('Amplitude');
title('discrete Sinusoidal Periodic Wave');
grid;
% continuous ramp signal generator
t =0:.01:5;x=2*t;
subplot(4,4,11);
plot(t,x);
xlabel('Time (sec)');
ylabel('Amplitude');
title('continuous ramp Aperiodic Wave');
grid;
% discrete ramp sequence generator
n = 0:5;
x=2*n;
subplot(4,4,12);
stem(n,x);
xlabel('Time (sec)');
ylabel('Amplitude');
title('discrete ramp Aperiodic sequence');
grid;
% continuous square wave generator
t = -5:.01:5;
x = square(t);
subplot(4,4,5);
plot(t, x);
xlabel('Time (sec)');
ylabel('Amplitude');
title('continuous Square Periodic Wave');
grid;
% Discrete square wave generator
n = - 5:5;
x = square(n);
subplot(4,4,6);
stem(n, x);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Discrete time Periodic Square Wave');
% continuous sawtooth wave generator
t = - 5:.01:5;
x = sawtooth(t);
subplot(4,4,7);
plot(t,x);
xlabel('Time (sec)');
ylabel('Amplitude');
title('continuous Saw tooth Periodic Wave');
grid;
% discrete saw tooth sequence generator
n = -5:5;
x = sawtooth(n);
subplot(4,4,8);
stem(n,x);
xlabel('Time (sec)');
ylabel('Amplitude');
title('discrete Saw tooth Periodic Wave');
grid;
% continuous sinc signal generator
t = -5:.01:5;
x = sinc(t);
subplot(4,4,13);
plot(t,x);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Continuous Aperiodic Sinc Wave');
grid;
% discrete sinc sequence generator
n = - 5:.1:5;
x = sinc(n);
subplot(4,4,14);
stem(n,x);
xlabel('Time (sec)');
ylabel('Amplitude');
title('discrete Sinc Aperiodic Wave');
grid;
%To generate a Aperiodic rectangular pulse
t=- 5:0.01:5;
pulse = rectpuls(t,2); %pulse of width 2 time units
subplot(4,4,15),plot(t, pulse);
xlabel('Time (sec)');
ylabel('Amplitude');
title('continuous rectangular pulse Aperiodic Wave');
grid;
%To generate a Aperiodic signum function
t=- 5:0.01:5;
pulse = sign(t); %pulse of width 2 time units
subplot(4,4,16);
plot(t, pulse);
xlabel('Time (sec)');
ylabel('Amplitude');
title('continuous signum Aperiodic Wave');
grid;