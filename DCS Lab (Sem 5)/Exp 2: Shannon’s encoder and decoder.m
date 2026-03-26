clc;
clear;
% Step 1: Define symbols and their corresponding probabilities
symbols = 1:5; % Symbols (1, 2, ..., 5)
probabilities = [0.4,0.25,0.15,0.12,0.08]; % Probabilities (example for 5 symbols)
% Step 2: Sort symbols based on probabilities in descending order
[probabilities, idx] = sort(probabilities, 'descend'); % Sort probabilities in descending order
symbols = symbols(idx); % Sort symbols accordingly
% Step 3: Calculate cumulative probabilities (without the last one)
cumulative_prob = cumsum([0 probabilities(1:end-1)]);
% Step 4: Generate Shannon binary codes based on cumulative probabilities
codes = cell(1, length(probabilities)); % To store binary codes
for i = 1:length(probabilities)
% Calculate the length of the binary code based on entropy: L_i = ceil(-log2(p_i))
code_length = ceil(-log2(probabilities(i)));
% Convert the fractional part of the cumulative probability to binary
% Multiply cumulative probability by 2^code_length and take the integer part
binary_rep = dec2bin(floor(cumulative_prob(i) * 2^code_length), code_length);
% Store the binary representation as Shannon code
codes{i} = binary_rep;
end
% Display Shannon binary encoding dictionary (Symbol -> Codeword)
disp('Shannon Binary Encoding Dictionary (Symbol -> Codeword):');
for i = 1:length(symbols)
fprintf('Symbol: %d, Code: %s\n', symbols(i), codes{i});
end
% Step 5: Encode a message using Shannon binary encoding
message = [1 2 3 4 5 1 3 2]; % Example message (using the defined symbols)
% Create the dictionary for encoding (mapping symbols to codes)
shannonDict = containers.Map(symbols, codes);
% Initialize encodedMessage as a character array
encodedMessage = '';
% Concatenate the binary string for each symbol
for i = 1:length(message)
encodedMessage = [encodedMessage, shannonDict(message(i))]; % Concatenate as a string
end
% Display the encoded binary message as a string
disp('Encoded Message (Binary Code):');
disp(encodedMessage);
% Step 6: Decode the binary code back to the original message
decodedMessage = [];
temp = '';
for i = 1:length(encodedMessage)
temp = [temp encodedMessage(i)]; % Build code bit by bit
for j = 1:length(codes)
if strcmp(temp, codes{j}) % Compare current bits with valid codes
decodedMessage = [decodedMessage symbols(j)];
temp = ''; % Reset temp for the next symbol
break;
end
end
end
% Display the decoded message (should match the original message)
disp('Decoded Message:');
disp(decodedMessage);