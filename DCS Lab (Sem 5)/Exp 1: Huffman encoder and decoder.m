clc;
clear;
% Step 1: Define symbols and their corresponding probabilities
symbols = 1:6; % Assign symbols (can be any set of symbols)
probabilities = [0.4,0.2,0.2,0.1,0.07,0.03]; % Corresponding probabilities
% Step 2: Create Huffman dictionary based on probabilities
dict = huffmandict(symbols, probabilities); % Generate Huffman dictionary
% Display Huffman dictionary (Symbol -> Codeword)
disp('Huffman Dictionary (Symbol -> Codeword):');
for i = 1:length(symbols)
codeword = dict{i,2}; % Extract binary code
codeStr = sprintf('%d', codeword); % Convert binary array to string
fprintf('Symbol: %d, Code: %s\n', dict{i,1}, codeStr);
end
% Step 3: Encode a message using Huffman encoding
message = [1 2 3 4 5 6 1 3 2]; % Example message (using the defined symbols)
% Convert the message symbols to their Huffman codes (binary encoding)
encodedMessage = huffmanenco(message, dict); % Encode message
% Display the encoded binary message
disp('Encoded Message (Binary Code):');
disp(num2str(encodedMessage));
% Step 4: Decode the binary code back to the original message (optional)
decodedMessage = huffmandeco(encodedMessage, dict); % Decode message
% Display the decoded message (should match the original message)
disp('Decoded Message:');
disp(decodedMessage);