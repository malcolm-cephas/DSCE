clc; clear all; close all;
n=0:20;
x=0.9.^n; % for x=a^n, or you may use any input
n=0:length(x)-1;
w=-round(pi,2):0.01:round(pi,2);
[X] = dtft(x,w);
X=round(X,4); %To round the values of Ck for 4 decimal places
X_mag=abs(X);
X_angle= angle(X);
Mag_L=X_mag(1:ceil(length(X)/2));
Mag_R=fliplr(X_mag(ceil(length(X)/2): length(X)));
Ang_L=X_angle(1:ceil(length(X)/2));
Ang_R=-1*[X_angle(length(X):-1:ceil(length(X)/2))];
if (Ang_L == Ang_R )
disp('The DTFT phase is odd symetric')
end
if (Mag_L == Mag_R)
disp('The DTFT magnitude spectrum is even symetric')
end
figure()
subplot(311); stem(n,x); title('Signal1'); xlabel('time index'); ylabel('amplitude');
subplot(312); plot(w, X_mag); title('Mag. Plot'); xlabel('Frequency w in radt'); ylabel('Mag.');
subplot(313); plot(w, X_angle); title('Phase plot'); xlabel('Frequency w in rad'); ylabel('amplitude');