clc;
clear all;
close all;
% Define two sequences
x = [1, 2, 3, 4];
h = [1, 1, 1, 1];
% Length of the sequences
N = length(x);
% Circular convolution using DFT and IDFT calculation
X = zeros(1, N);
H = zeros(1, N);
% DFT of x and h sequences
for n = 0:N-1
for k = 0:N-1
X(n+1) = X(n+1) + x(k+1) * exp(-1j * 2 * pi * k * n / N);
H(n+1) = H(n+1) + h(k+1) * exp(-1j * 2 * pi * k * n / N);
end
end
% Computation of Y(k).
Y = X .* H;
y = zeros(1, N);
for n = 0:N-1
for k = 0:N-1
y(n+1) = y(n+1) + Y(k+1) * exp(1j * 2 * pi * k * n / N);
end
y(n+1) = y(n+1) / N;
end
% Plot the sequences and circular convolution result
figure (1);
subplot(2,1,1);
stem(0:N-1, x, 'r', 'LineWidth', 1.5);
xlabel('Index');
ylabel('Amplitude');
title('Sequence x');
subplot(2,1,2);
stem(0:N-1, h, 'b', 'LineWidth', 1.5);
xlabel('Index');
ylabel('Amplitude');
title('Sequence h');
figure(2)
subplot(2,1,1);
stem(0:N-1, real(y), 'g', 'LineWidth', 1.5);
xlabel('Index');
ylabel('Amplitude');
title('Real part of Circular Convolution');
subplot(2,1,2);
stem(0:N-1, imag(y), 'm', 'LineWidth', 1.5);
xlabel('Index');
ylabel('Amplitude');
title('Imaginary part of Circular Convolution');
sgtitle('Circular Convolution using DFT and IDFT');

