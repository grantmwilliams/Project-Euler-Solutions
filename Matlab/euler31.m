%% Coin Sums 31
clear;close all;clc;
tic

coins = [1 2 5 10 20 50 100 200];       % Value of coins we can use
amount = 201;                           % Matlab indexes from 1 not 0, so we need to add 1 to our target value
ways = zeros(1,amount);                 % Preallocating for speed
ways(1) = 1;                            % First solution is 1

% Solves from smallest sub problem to largest (bottom up approach of
% dynamic programming).
for i = 1:length(coins)                 
    for j = coins(i)+1:amount           
        ways(j) = ways(j) + ways(j-coins(i));   
    end
end

display(ways(amount));

toc


