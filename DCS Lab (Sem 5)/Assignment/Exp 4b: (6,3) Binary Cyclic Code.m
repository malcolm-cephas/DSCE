clc;
clear;
close all;

%% Parameters
n = 6; k = 3;
g = [1 0 1 1];

%% Input message
msg = input('Enter 3-bit message [e.g. 1 0 1]: ');

%% -------- ENCODING --------
msg_ext = [msg zeros(1, n-k)];

[~, rem] = deconv(msg_ext, g);
rem = mod(rem,2);

rem = [zeros(1, (n-k)-length(rem)) rem];

codeword = mod(msg_ext + [zeros(1,k) rem], 2);

disp('Encoded codeword:');
disp(codeword);

%% -------- CHANNEL --------
r = codeword;
pos = input('Enter error position (0 for no error): ');

if pos > 0
    r(pos) = mod(r(pos)+1,2);
end

disp('Received codeword:');
disp(r);

%% -------- DECODING --------
[~, syn] = deconv(r, g);
syn = mod(syn,2);

syn = [zeros(1, (length(g)-1)-length(syn)) syn];

disp('Syndrome:');
disp(syn);

if all(syn == 0)
    disp('No error detected');
else
    disp('Error detected');
end