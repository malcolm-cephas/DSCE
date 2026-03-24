clc;
wp=0.3*pi;
ws=0.45*pi;
ap=-3;
as=-50;
wt=ws-wp;
n1=ceil((8*pi)/wt);
wc=wp/pi;
N=n1+rem(n1-1,2);
disp(N);
wn=hamming(N);
disp(wn);
a=(N-1)/2;
h=fir1(N-1,wc,wn); % fir1 function will calculate both hd(n) and h(n)
disp(h);
figure;
freqz(h);
figure;
n=0:N-1;
stem(n,h);
xlabel('time axis');
ylabel('h(n)');
title('impulse response of FIR lowpass filter');
disp(wn)