clc;
clear;

p = input('Enter prime number: ');

g = input(['Enter primitive root of ', num2str(p), ': ']);

x = input(['Enter value for x less than ', num2str(p), ': ']);

R1 = powermod(g, x, p);
fprintf('R1 = %d\n', R1);

y = input(['Enter value for y less than ', num2str(p), ': ']);

R2 = powermod(g, y, p);
fprintf('R2 = %d\n', R2);

K1 = powermod(R2, x, p);
fprintf('Key calculated at Sender''s side: %d\n', K1);

K2 = powermod(R1, y, p);
fprintf('Key calculated at Receiver''s side: %d\n', K2);

disp('Diffie-Hellman secret key was calculated successfully.');

function result = powermod(base, exponent, modulus)
    base = mod(base, modulus);
    result = 1;
    while exponent > 0
        if mod(exponent, 2) == 1
            result = mod(result * base, modulus);
        end
        base = mod(base * base, modulus);
        exponent = floor(exponent / 2);
    end
end
