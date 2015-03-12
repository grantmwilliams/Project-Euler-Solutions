%% 10001 Prime Number
clear; close all; clc;
tic
i = 10001;
P = primes(i);
while length(P) < 10001 || length(P) == 10001
    i = i + 100;
    P = primes(i);
end
disp(P(10001));
toc

%% 10001 Prime Number Other Technique

limit = 10001;
count = 1;
num = 3;
while (count < limit || count == limit)
    if (isprime(num) == 1)
        count = count+1;
    end
    num = num+2;
end

disp