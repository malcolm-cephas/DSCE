clc; clear all; close all;
N = input( ' Enter the length of impulse response = ');
b = input('Enter the numerator coeff = ');
a = input('Enter the denominator coeff = ');
n = 0 : N-1;
x = 3*ones(1, N); % input sequence
y = filter(b, a, x) % system response
[h, t] = impz(b, a, N) % impulse response
[r, p, k] = residuez(b, a) % computing poles &
zeroes
[H,w] = freqz(b, a, 128); % frequency response
H_mag = abs(H);
figure(1);
subplot(3,1,1);
stem(n, x);
grid;
xlabel('Time index');
ylabel ('Amplitude');
title('Input sequence');
subplot(3, 1, 2);
stem(n,y);
grid;
xlabel('Time index');
ylabel('Amplitude');
title('System Response');
subplot(3,1,3);
stem(t, h);
grid;
xlabel('Time index');
ylabel('Amplitude');
title('Impulse Response');
figure(2);
zplane(b, a);
title('z plane');
grid;
figure(3);
plot(w, H_mag);
grid;
xlabel('Frequency');
ylabel('Amplitude');
title('Frequency Response');