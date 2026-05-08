function hill_cipher()
    clc;
    fprintf('--- SIMPLE HILL CIPHER (3x3) ---\n\n');

    key = [17, 17, 5;
           21, 18, 21;
           2, 2, 19];

    inv_key = [4, 9, 15;
               15, 17, 6;
               24, 0, 17];

    msg = input('Enter a 3-letter lowercase word (e.g., "cat"): ', 's');

    if length(msg) ~= 3
        error('Error: Please enter exactly 3 letters.');
    end

    msg_numbers = double(msg) - 97;

    msg_vector = msg_numbers';

    fprintf('\nOriginal numbers: %d %d %d\n', msg_numbers);

    encrypt_math = key * msg_vector;
    encrypt_vec  = mod(encrypt_math, 26);

    encrypted_msg = char(encrypt_vec' + 97);

    fprintf('Encrypted word:   %s\n', encrypted_msg);

    decrypt_math = inv_key * encrypt_vec;
    decrypt_vec  = mod(decrypt_math, 26);

    decrypted_msg = char(decrypt_vec' + 97);

    fprintf('Decrypted word:   %s\n', decrypted_msg);
end
