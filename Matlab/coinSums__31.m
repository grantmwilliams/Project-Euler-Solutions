%% Coin Sums 31
clear;close all;clc;
tic

coins = [1 2 5 10 20 50 100 200];


for i = 1:size(coins,2)
    combinationsSet{i} = nchoosek(coins,i);
end

disp(combinationsSet)
toc

