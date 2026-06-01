clc; clear all; close all;
% Generation of analog signal
tfinal=0.02;
t=0:0.00002: tfinal;
fd=input('Enter analog freuency ');
xt= cos (2*pi*fd*t); % define analog signal for comparison
% Under sampling
fs1=1.5*fd; % Condition for Nyquist sampling
% simulate condition for under %sampling i.e.,
fs1<2*fd
n1=0:1/fs1:tfinal; % define the time vector
xn1=cos(2*pi*n1*fd); % Generate the under sampled signal
subplot(3,2,1); % plot the analog & under sampled signals
plot(t,xt,'b',n1,xn1,'r*-');
title('under sampled plot');
% plot the under sampled signal in frequency domain
Xk1=fft(xn1); % Conversion to frequency domain
f1=(0:length(Xk1) -1)*fs1/length(Xk1); % frequency index of spectrum plot
subplot(3,2,2);
stem(f1,abs(Xk1));
title('spectrum of under sampled plot');
% Nyquist Sampling
fs2=2*fd; % Condition for Nyquist sampling
n2=0:1/fs2:tfinal;
xn2=cos(2*pi*fd*n2);
subplot(3,2,3); % plot the analog & Nyquist sampled signals
plot(t,xt,'b',n2,xn2,'r*-');
title('Nyquist plot');
% plot the Nyquist sampled signal in frequency domain
Xk2=fft(xn2);
f2=(0:length(Xk2)-1)*fs2/length(Xk2);
subplot(3,2,4);
stem(f2,abs(Xk2));
title('spectrum of right sampled plot');
% Oversampling
fs3=10*fd; % Condition for oversampling
n3=0:1/fs3:tfinal;
xn3=cos(2*pi*fd*n3);
% plot the analog & over sampled signals
subplot(3,2,5);
plot(t,xt,'b',n3,xn3,'r*-');
title('Oversampled plot');
xlabel('time');
ylabel('amplitude');
Xk3=fft(xn3);
f3=(0:length(Xk3) -1)*fs3/length(Xk3);
subplot(3,2,6); % plot the over sampled signal in frequency domain
stem(f3,abs(Xk3));
title('spectrum of oversampled plot');