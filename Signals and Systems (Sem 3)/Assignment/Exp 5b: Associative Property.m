clc;
clear;
close all;

x = [1 2 3];
h = [4 5 6];
g = [1 1 1];

y1 = conv(conv(x, h), g);
y2 = conv(x, conv(h, g));

disp('(x*h)*g = ');
disp(y1);

disp('x*(h*g) = ');
disp(y2);

if isequal(y1, y2)
    disp('Associative property VERIFIED');
else
    disp('Associative property NOT verified');
end