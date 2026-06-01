clc; clear all; close all;
a = input ( 'Enter the co-efficient of y(n),y(n-1)......= ' );
b = input ( 'Enter the co-efficient of x(n),x(n-1)......= ' );
xi = input ( 'Enter the initial conditions x(-1),x(-2)... = ' );
yi = input ('Enter initial conditions y(-1),y(-2)....= ');
N = input ( 'Enter the length of the response required…‟);
zi = filtic ( b, a, yi, xi );
n = 0 : N-1; %For N output samples using filter function, the i/p should also be of size N
x = (1/4).^n % input sequence
y = filter ( b, a, x, zi ) % output response
subplot ( 2, 1, 1 );stem ( n, x );
title ( 'input' ); xlabel ( 'n' ); ylabel ('x(n)' );
subplot (2, 1, 2 );stem ( n, y );
title ( 'Res of DE with ICs ' );xlabel ( 'n' );ylabel ( 'y(n)' );