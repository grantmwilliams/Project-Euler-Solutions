%%Lexicographic Permutations 24
clear;close all;clc;
tic
n = sortrows(perms([9 8 7 6 5 4 3 2 1 0]));
n(1e6,:)
toc

% Could use combinatorics to speed up the program?
