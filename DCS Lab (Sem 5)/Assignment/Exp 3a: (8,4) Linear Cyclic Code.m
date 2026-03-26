clc;
clear;
close all;

%% Message (4 bits)
msg = input('Enter 4-bit message (e.g. [1 0 1 1]): ');

g = [1 0 0 1 1];   % Generator polynomial

n = 8; k = 4;
msg_poly = [msg zeros(1, n-k)];  % append zeros

%% Encoding (mod-2 division)
[~, rem] = deconv(msg_poly, g);
rem = mod(rem, 2);

% Pad remainder if needed
rem = [zeros(1, n-k-length(rem)) rem];

codeword = mod(msg_poly + [zeros(1,k) rem], 2);

disp('Encoded codeword:');
disp(codeword);

%% Introduce error (optional)
r = codeword;
r(3) = mod(r(3)+1,2);   % flip bit

disp('Received codeword:');
disp(r);

%% Decoding (syndrome check)
[~, syn] = deconv(r, g);
syn = mod(syn,2);

disp('Syndrome:');
disp(syn);

if all(syn==0)
    disp('No error detected');
else
    disp('Error detected');
end