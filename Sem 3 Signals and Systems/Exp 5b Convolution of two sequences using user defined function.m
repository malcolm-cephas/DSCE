clc; clear all; close all;
x = input('Enter the first sequence x= ');
h = input('Enter the second sequence h= ');
nx = input('Enter the time index for the first sequence nx= ');
nh = input('Enter the time index for the second sequence nh= ');
disp('Output Sequence is : ');
[ y, ny] = user_fn(x, nx, h, nh) % calling user defined function
subplot(3,1,1); stem(nx, x); xlabel('n'); ylabel('x[n]');
subplot(3,1,2); stem(nh, h); xlabel('n'); ylabel('h[n]');
subplot(3,1,3); stem(ny,y); xlabel('n'); ylabel('y[n]');
title('linear convolution');
user defined function: save in another file by name user_fn
function[y, ny] = user_fn(x, nx, h, nh) % function definition
nyb = nx(1) + nh(1); % start point of y(n)
nye = nx(length(x)) + nh(length(h)); % end point of y(n)
ny = nyb:nye; % time index of y(n)
y = conv(x, h); % convolution computation