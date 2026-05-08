clc;
clear;
% Parameters for the code
n = 7; % Code length
k = 4; % Message length
m = n - k; % Number of parity bits
% Step 1: Define the generator polynomial (g(x)) for (7, 4) cyclic code
% g(x) = x^3 + x^2 + 1 (corresponds to the binary polynomial 1101)
g = [1 1 0 1]; % Coefficients of g(x)
% Step 2: Create the generator matrix
G = zeros(k, n);
for i = 0:k-1
% Generate cyclic shifts of the generator polynomial
shift = [g zeros(1, n-length(g))]; % Shift polynomial
G(i+1, :) = mod(shift, 2); % Modulo 2
g = circshift(g, 1); % Shift left for next row
end
% Display the generator matrix
disp('Generator Matrix (G):');
disp(G);
% Step 3: Define a message (4 bits)
message = [1 0 1 1]; % Example message
% Step 4: Encode the message using the generator matrix
codeword = mod(message * G, 2); % Matrix multiplication and modulo 2
% Display the generated codeword
disp('Generated Codeword:');
disp(codeword);
% Step 5: Simulate adding errors (optional)
% Let's say we introduce an error in the 3rd bit of the codeword
error_vector = [0 0 1 0 0 0 0]; % Error in the 3rd bit
received_codeword = mod(codeword + error_vector, 2); % Received codeword with error
disp('Received Codeword (with Error):');
disp(received_codeword);
% Step 6: Construct the parity-check matrix (H)
H = zeros(m, n);
% Create the parity-check matrix for the (7, 4) cyclic code
H(1, :) = [1 1 0 1 1 0 0]; % First row corresponds to the parity check
H(2, :) = [0 1 1 0 0 1 1]; % Second row
H(3, :) = [0 0 0 1 1 1 1]; % Third row
% Display the parity-check matrix
disp('Parity-Check Matrix (H):');
disp(H);
% Step 7: Check for errors in the received codeword
syndrome = mod(received_codeword * H', 2); % Calculate the syndrome
disp('Syndrome:');
disp(syndrome);
if any(syndrome) % If syndrome is non-zero, an error is detected
disp('Error detected in the received codeword.');
else
disp('No error detected.');
end