%% Summation of primes 10
clear;close all;clc;
format long g
tic

disp(sum(primes(2e6)));

toc

%% Less easy way
clear;close all; clc;
tic

limit = 2e6;
primes = true(1,limit);
i = 1; primes(i) = false;
while (i^2 < limit)
    if primes(i)
        for j = i^2:i:limit
            primes(j) = false;
        end
    end
    i = i + 1;
end

disp(sum(find(primes==true)));

toc