clc;
clear;
close all;

n = -10:10;
x = n .* (n>=0);   % Example: ramp (one-sided)

% Flip signal
x_neg = fliplr(x);

% Even and Odd parts
x_even = (x + x_neg)/2;
x_odd  = (x - x_neg)/2;

% Verification
x_reconstructed = x_even + x_odd;

figure;

subplot(4,1,1);
stem(n, x, 'filled');
title('Original Signal x(n)');
grid on;

subplot(4,1,2);
stem(n, x_even, 'filled');
title('Even Component');
grid on;

subplot(4,1,3);
stem(n, x_odd, 'filled');
title('Odd Component');
grid on;

subplot(4,1,4);
stem(n, x_reconstructed, 'filled');
title('Reconstructed Signal (Even + Odd)');
grid on;