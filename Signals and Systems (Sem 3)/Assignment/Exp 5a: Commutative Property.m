clc;
clear;
close all;

x = [1 2 3];
h = [4 5 6];

y1 = conv(x, h);
y2 = conv(h, x);

disp('x * h = ');
disp(y1);

disp('h * x = ');
disp(y2);

if isequal(y1, y2)
    disp('Commutative property VERIFIED');
else
    disp('Commutative property NOT verified');
end