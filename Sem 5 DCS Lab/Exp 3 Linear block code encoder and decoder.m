clc;
clear;
% Parameters for the code
k = 4; % Number of message bits
n = 7; % Total number of code bits
m = n - k; % Number of parity bits
% Step 1: Define the generator matrix (G) for (7, 4) Hamming code
G = [
1 0 0 0 1 1 1; % Row 1
0 1 0 0 1 1 0; % Row 2
0 0 1 0 1 0 1; % Row 3
0 0 0 1 0 1 1 % Row 4
];
% Step 2: Define a message (4 bits)
message = [1 0 1 0]; % Example message
% Step 3: Encode the message using the generator matrix
codeword = mod(message * G, 2); % Matrix multiplication and modulo 2
% Display the generated codeword
disp('Generated Codeword:');
disp(codeword);
% Step 4: Simulate adding errors (optional)
% Let's say we introduce an error in the 3rd bit of the codeword
error_vector = [0 0 1 0 0 0 0]; % Error in the 3rd bit
received_codeword = mod(codeword + error_vector, 2); % Received codeword with error
disp('Received Codeword (with Error):');
disp(received_codeword);
% Step 5: Error Detection using the Parity Check Matrix (H)
% Construct the parity-check matrix (H)
H = [
1 1 0 1 0 0 0; % Row 1
1 0 1 0 1 0 0; % Row 2
0 1 1 0 0 1 0; % Row 3
0 0 0 1 1 1 1 % Row 4
];
% Step 6: Check for errors in the received codeword
syndrome = mod(received_codeword * H', 2); % Calculate the syndrome
disp('Syndrome:');
disp(syndrome);
if any(syndrome) % If syndrome is non-zero, an error is detected
disp('Error detected in the received codeword.');
else
disp('No error detected.');
end