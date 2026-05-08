clc;
clear;
close all;

% Original sequence
x = [1 2 3 4];
N = length(x);

% Compute DFT of original sequence
X = fft(x);

% --------- Case 1: n0 = 1 ---------
n0 = 1;

% Circular shift in time domain
x1 = circshift(x, [0 n0]);

% DFT of shifted signal
X1 = fft(x1);

% Theoretical result
k = 0:N-1;
W = exp(-1j*2*pi*k*n0/N);
X1_theory = X .* W;

disp('For n0 = 1');
disp('DFT of shifted signal:');
disp(X1);
disp('Theoretical DFT:');
disp(X1_theory);

% --------- Case 2: n0 = 3 ---------
n0 = 3;

% Circular shift
x2 = circshift(x, [0 n0]);

% DFT of shifted signal
X2 = fft(x2);

% Theoretical result
W = exp(-1j*2*pi*k*n0/N);
X2_theory = X .* W;

disp('For n0 = 3');
disp('DFT of shifted signal:');
disp(X2);
disp('Theoretical DFT:');
disp(X2_theory);