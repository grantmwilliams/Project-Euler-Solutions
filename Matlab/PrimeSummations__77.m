%% Prime Summations 77
clear;close all;clc;

tic

limit = 100;
n = zeros(1,limit);
k = zeros(1,limit);
k(1) = 1;
k(2) = 2;

for n = 3:limit
  
    for j = 1:n-1
        x(j) = sum(factor(j))*k(n-j);
    end
    k(n) = 1/n*(sum(factor(n)) + sum(x));
    
    if k(n) > 50000
        break
    end
end

final = n-3;
disp(final)
toc

