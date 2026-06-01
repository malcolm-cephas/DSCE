clc;
clear;
close all;

n = -5:5;

% Define two signals
x1 = sin(n);
x2 = cos(n);

a = 2;
b = 3;

%% -------- Linearity Test --------

% LHS: T[a*x1 + b*x2]
lhs = (a*x1 + b*x2).^2;

% RHS: a*T[x1] + b*T[x2]
rhs = a*(x1.^2) + b*(x2.^2);

figure;
subplot(2,1,1);
stem(n, lhs, 'filled');
title('LHS: T[a*x1 + b*x2]');
grid on;

subplot(2,1,2);
stem(n, rhs, 'filled');
title('RHS: aT[x1] + bT[x2]');
grid on;

% Check equality
if isequal(round(lhs,5), round(rhs,5))
    disp('System is Linear');
else
    disp('System is NOT Linear');
end

%% -------- Time Invariance Test --------

n0 = 2;  % Shift

% Input shifted
x_shift = sin(n - n0);

% Output of shifted input
y1 = x_shift.^2;

% Output first, then shift
y = (sin(n)).^2;
y2 = (sin(n - n0)).^2;

figure;
subplot(2,1,1);
stem(n, y1, 'filled');
title('T[x(n - n0)]');
grid on;

subplot(2,1,2);
stem(n, y2, 'filled');
title('y(n - n0)');
grid on;

% Check equality
if isequal(round(y1,5), round(y2,5))
    disp('System is Time-Invariant');
else
    disp('System is NOT Time-Invariant');
end