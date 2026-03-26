clc;
clear;
close all;

x = [1 2 3];
h = [4 5 6];
g = [1 1 1];

% LHS
lhs = conv(x, h + g);

% RHS
rhs = conv(x, h) + conv(x, g);

disp('LHS = ');
disp(lhs);

disp('RHS = ');
disp(rhs);

if isequal(lhs, rhs)
    disp('Distributive property VERIFIED');
else
    disp('Distributive property NOT verified');
end
