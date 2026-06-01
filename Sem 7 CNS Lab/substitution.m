a = 'abcdefghijklmnopqrstuvwxyz';
b = "@%&wvutsrq24nmlkjihg97dcba";  

inputStr = input('Enter any string: ', 's');
inputStr = lower(inputStr);   
encrypted = '';
decrypted = '';

for i = 1:length(inputStr)
    c = inputStr(i);
    idx = strfind(a, c);
    if ~isempty(idx)
        encrypted(end+1) = b(idx);   
    else
        encrypted(end+1) = c;        
    end
end


for i = 1:length(encrypted)
    c = encrypted(i);
    idx = strfind(b, c);
    if ~isempty(idx)
        decrypted(end+1) = a(idx);  
    else
        decrypted(end+1) = c;        
    end
end

fprintf('Encrypted string : %s\n', encrypted);
fprintf('Decrypted string : %s\n', decrypted);
