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