%% Number Spiral Diagonals 28
clear;close all;clc;
tic
format long
sideLength = 1001;
n = (sideLength - 1) / 2;

final = ((16/3)*(n^3) + (30/3)*(n^2) + (26/3)*(n) + 1);

fprintf('The sum of diagonals of side length %d is: %d\n',sideLength,final);
toc