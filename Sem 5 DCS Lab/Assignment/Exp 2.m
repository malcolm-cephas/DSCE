clc;
clear;
close all;

%% Input
str = input('Enter a string: ','s');
symbols = unique(str);

%% Frequency calculation
freq = zeros(1, length(symbols));
for i = 1:length(symbols)
    freq(i) = sum(str == symbols(i));
end

prob = freq / sum(freq);

%% Sort symbols by probability (descending)
[prob, idx] = sort(prob, 'descend');
symbols = symbols(idx);

%% Generate Shannon-Fano codes
codes = shannon_fano(symbols, prob);

disp('Symbol   Code');
for i = 1:length(symbols)
    fprintf('  %c      %s\n', symbols(i), codes{i});
end

%% Encoding
encoded = '';
for i = 1:length(str)
    for j = 1:length(symbols)
        if str(i) == symbols(j)
            encoded = strcat(encoded, codes{j});
            break;
        end
    end
end

disp('Encoded bitstream:');
disp(encoded);

%% Decoding
decoded = '';
temp = '';

for i = 1:length(encoded)
    temp = strcat(temp, encoded(i));
    
    for j = 1:length(codes)
        if strcmp(temp, codes{j})
            decoded = strcat(decoded, symbols(j));
            temp = '';
            break;
        end
    end
end

disp('Decoded string:');
disp(decoded);

%% -------- Shannon-Fano Function --------
function codes = shannon_fano(symbols, prob)

    codes = cell(1, length(symbols));
    
    function assign_code(sym, pr, prefix)
        if length(sym) == 1
            idx = find(symbols == sym);
            codes{idx} = prefix;
            return;
        end
        
        total = sum(pr);
        cum_sum = 0;
        
        for i = 1:length(pr)
            cum_sum = cum_sum + pr(i);
            if cum_sum >= total/2
                break;
            end
        end
        
        assign_code(sym(1:i), pr(1:i), strcat(prefix,'0'));
        assign_code(sym(i+1:end), pr(i+1:end), strcat(prefix,'1'));
    end

    assign_code(symbols, prob, '');
end