%% Summation of primes 10
clear;close all;clc;

tic

final = sum(primes(2e6));

fprintf('%d \n',final);

toc