% Experiment No: 10 (Part 2)
% Amplitude Modulation for different modulation index 

clear all 
close all 
clc 

fm=0.5; 
Am=1; 
fc=5; 
Ac=1; 
mod_index=[0,0.25,0.50,0.75,1.00,1.25,1.50,1.75,2.00]; 
t=0:0.01:10; 

mt=Am*cos(2*pi*fm*t); 
ct=Ac*cos(2*pi*fc*t); 

st1=Ac*(1+(mod_index(1))*cos(2*pi*fm*t)).*cos(2*pi*fc*t); 
st2=Ac*(1+(mod_index(2))*cos(2*pi*fm*t)).*cos(2*pi*fc*t); 
st3=Ac*(1+(mod_index(3))*cos(2*pi*fm*t)).*cos(2*pi*fc*t); 
st4=Ac*(1+(mod_index(4))*cos(2*pi*fm*t)).*cos(2*pi*fc*t); 
st5=Ac*(1+(mod_index(5))*cos(2*pi*fm*t)).*cos(2*pi*fc*t); 
st6=Ac*(1+(mod_index(6))*cos(2*pi*fm*t)).*cos(2*pi*fc*t); 
st7=Ac*(1+(mod_index(7))*cos(2*pi*fm*t)).*cos(2*pi*fc*t); 
st8=Ac*(1+(mod_index(8))*cos(2*pi*fm*t)).*cos(2*pi*fc*t); 
st9=Ac*(1+(mod_index(9))*cos(2*pi*fm*t)).*cos(2*pi*fc*t); 

subplot(4,3,1); 
plot(t,mt); 
xlabel('Time'); 
ylabel('m(t)'); 
title('Message Signal'); 

subplot(4,3,2); 
plot(t,ct); 
xlabel('Time'); 
ylabel('c(t)'); 
title('Carrier Signal'); 

subplot(4,3,3); 
plot(t,st1); 
xlabel('Time'); 
ylabel('st1'); 
title('modulation index=0'); 

subplot(4,3,4); 
plot(t,st2); 
xlabel('Time'); 
ylabel('st2'); 
title('modulation index=0.25'); 

subplot(4,3,5); 
plot(t,st3); 
xlabel('Time'); 
ylabel('st3'); 
title('modulation index=0.50'); 

subplot(4,3,6); 
plot(t,st4); 
xlabel('Time'); 
ylabel('st4'); 
title('modulation index=0.75'); 

subplot(4,3,7); 
plot(t,st5); 
xlabel('Time'); 
ylabel('st5'); 
title('modulation index=1.00'); 

subplot(4,3,8); 
plot(t,st6); 
xlabel('Time'); 
ylabel('st6'); 
title('modulation index=1.25'); 

subplot(4,3,9); 
plot(t,st7); 
xlabel('Time'); 
ylabel('st7'); 
title('modulation index=1.50'); 

subplot(4,3,10); 
plot(t,st8); 
xlabel('Time'); 
ylabel('st8'); 
title('modulation index=1.75'); 

subplot(4,3,11); 
plot(t,st9); 
xlabel('Time'); 
ylabel('st9'); 
title('modulation index=2.00'); 
