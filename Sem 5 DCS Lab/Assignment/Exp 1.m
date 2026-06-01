clc;
clear;
close all;

%% Input String
str = input('Enter a string: ','s');

%% Find unique symbols and probabilities
symbols = unique(str);
freq = zeros(1, length(symbols));

for i = 1:length(symbols)
    freq(i) = sum(str == symbols(i));
end

prob = freq / sum(freq);

%% Create Huffman Dictionary
dict = huffmandict(symbols, prob);

disp('Huffman Dictionary:');
disp(dict);

%% Encoding
encoded = huffmanenco(str, dict);

disp('Encoded Bitstream:');
disp(encoded);

%% Decoding
decoded = huffmandeco(encoded, dict);

decoded_str = char(decoded);

disp('Decoded String:');
disp(decoded_str);