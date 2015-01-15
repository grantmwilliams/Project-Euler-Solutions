%% Factorial Digit Sum 20
clear; close all; clc;
tic 
final = double(feval(symengine, 'numlib::sumOfDigits', factorial(sym(100)))); 
toc