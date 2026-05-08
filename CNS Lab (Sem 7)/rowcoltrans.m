function TransCipher()
    pl = input('Enter the plain text: ', 's');

    s = strrep(pl, ' ', '');
    fprintf('Text without spaces: %s\n', s);

    k = length(s);
    col = 4;
    row = ceil(k / col);
    ch = repmat('#', row, col);

    l = 1;
    for i = 1:row
        for j = 1:col
            if l <= k
                ch(i,j) = s(l);
                l = l + 1;
            end
        end
    end

    trans = ch.';

    enc = '';
    for i = 1:col
        for j = 1:row
            enc = [enc trans(i,j)];
        end
    end
    fprintf('Encrypted Text: %s\n', enc);

    decMat = repmat('#', col, row);
    l = 1;
    for i = 1:col
        for j = 1:row
            decMat(i,j) = enc(l);
            l = l + 1;
        end
    end

    decMat2 = decMat.';

    dec = '';
    for i = 1:row
        for j = 1:col
            dec = [dec decMat2(i,j)];
        end
    end

    dec = strrep(dec, '#', '');
    fprintf('\nDecrypted Text: %s\n', dec);
end
