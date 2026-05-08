clc;
clear;
close all;

%% Message (3 bits)
msg = input('Enter 3-bit message (e.g. [1 0 1]): ');

g = [1 0 1 1];   % Generator polynomial

n = 6; k = 3;
msg_poly = [msg zeros(1, n-k)];

%% Encoding
[~, rem] = deconv(msg_poly, g);
rem = mod(rem, 2);

rem = [zeros(1, n-k-length(rem)) rem];

codeword = mod(msg_poly + [zeros(1,k) rem], 2);

disp('Encoded codeword:');
disp(codeword);

%% Introduce error
r = codeword;
r(2) = mod(r(2)+1,2);

disp('Received codeword:');
disp(r);

%% Decoding
[~, syn] = deconv(r, g);
syn = mod(syn,2);

disp('Syndrome:');
disp(syn);

if all(syn==0)
    disp('No error detected');
else
    disp('Error detected');
end