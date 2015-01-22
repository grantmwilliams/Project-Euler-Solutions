%% Reciprocal Cycles 26
clear;close all;clc;
tic
format long
a = primes((1000));
b = ones(1,length(a))./a;


toc

% I ended up just looking at the data on this one and discovering that 983
% is the answer. I'll come back to this one and try to take out the human
% requirements it's currently requiring..