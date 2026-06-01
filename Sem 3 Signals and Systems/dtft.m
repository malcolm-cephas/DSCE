function [X] = dtft(x,w) % Computes Discrete-time Fourier Transform
for i=0:length(w)-1 % w = frequency location vector
X(i)=0; % X = DTFT values computed at w frequencies
for k=0:length(x)-1 % x = finite duration sequence over n
X(i+1) =X(i+1)+ exp(-1i*w(i)*k)* x(k+1);
end
end
end