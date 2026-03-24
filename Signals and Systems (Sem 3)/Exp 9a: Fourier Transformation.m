%To find Fourier transform of a signal and get back the time domain signal from it
clc; clear all;close all;
syms t w x; % creating symbolic variables
x=2*exp(-2*abs(t))
X=fourier(x)
figure(1);
subplot(311);
ezplot(x,[-2,2]);
grid;
axis([-2 2 0 2.2])
subplot(312);
ezplot(abs(X),[-30,30]);
grid;
axis([-20 20 0 2.2]);
xlabel('\Omega (rad/sec)');
ylabel('|X(\Omega)|')
38
x1=ifourier(X)
subplot(313);
ezplot(x1,[-2,2]);
grid;
axis([-2 2 0 2.2])