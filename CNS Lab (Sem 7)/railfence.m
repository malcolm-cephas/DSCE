clc;
clear all;

msg = 'dayananda';
depth = 3;
enc = encode(msg, depth);
dec = decode(enc, depth);

fprintf('Simulating Railfence Cipher\n');
fprintf('---------------------------\n');
fprintf('Input Message : %s\n', msg);
fprintf('Encrypted Message : %s\n', enc);
fprintf('Decrypted Message : %s\n', dec);

function enc = encode(msg, depth)
    l = length(msg);
    mat = repmat(' ', depth, l);
    row = 1;
    down = true;
    for col = 1:l
        mat(row, col) = msg(col);
        if down
            row = row + 1;
            if row > depth
                row = depth - 1;
                down = false;
            end
        else
            row = row - 1;
            if row < 1
                row = 2;
                down = true;
            end
        end
    end
    enc = reshape(mat', 1, []);
    enc(enc == ' ') = [];
end

function dec = decode(enc, depth)
    l = length(enc);
    mat = repmat(' ', depth, l);
    
    row = 1; 
    down = true;
    for col = 1:l
        mat(row, col) = '*';
        if down
            row = row + 1;
            if row > depth
                row = depth - 1;
                down = false;
            end
        else
            row = row - 1;
            if row < 1
                row = 2;
                down = true;
            end
        end
    end
    
    idx = 1;
    for i = 1:depth
        for j = 1:l
            if mat(i, j) == '*'
                mat(i, j) = enc(idx);
                idx = idx + 1;
            end
        end
    end
    
    dec = '';
    row = 1; 
    down = true;
    for col = 1:l
        dec = [dec mat(row, col)];
        if down
            row = row + 1;
            if row > depth
                row = depth - 1;
                down = false;
            end
        else
            row = row - 1;
            if row < 1
                row = 2;
                down = true;
            end
        end
    end
end
