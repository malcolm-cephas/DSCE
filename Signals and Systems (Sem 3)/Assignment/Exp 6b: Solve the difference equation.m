clc;
clear;
close all;

n = 0:20;

% Input signal
x = cos(pi*n/3);

% Pre-allocate
y = zeros(1, length(n));

% Initial conditions
y_minus1 = -2;
y_minus2 = -3;
x_minus1 = 1;
x_minus2 = 1;

for i = 1:length(n)
    
    if i == 1
        x0 = x(i);
        y(i) = (1/3)*(x0 + x_minus1 + x_minus2) ...
             + 0.95*y_minus1 + 0.9025*y_minus2;
         
    elseif i == 2
        y(i) = (1/3)*(x(i) + x(i-1) + x_minus1) ...
             + 0.95*y(i-1) + 0.9025*y_minus1;
         
    else
        y(i) = (1/3)*(x(i) + x(i-1) + x(i-2)) ...
             + 0.95*y(i-1) + 0.9025*y(i-2);
    end
end

% Plot
figure;
stem(n, y, 'filled');
title('Output y(n)');
xlabel('n');
ylabel('Amplitude');
grid on;

disp('y(n) values:');
disp(y);