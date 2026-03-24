clc;close all; clear all;
x=input('enter signal');
y=fliplr(x);
if(x==y)
disp('signal is even')
else
if(x==-y)
disp('signal is odd')
else
disp('Signal is not symmetric')
end
end