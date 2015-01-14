%% 10001 Prime Number
clear; close all; clc;
tic
x = 150000;
primes = 2:x;
i=2;

while (i <= x)
    for i = 2*i:i:x
        primes(i - 1) = 0;
    end;
    i = i + 1;
end

primes = primes(primes > 0);
final = primes(10001)
toc