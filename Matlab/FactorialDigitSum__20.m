%% Factorial Digit Sum 20
clear; close all; clc;
tic 
disp(feval(symengine, 'numlib::sumOfDigits', factorial(sym(100)))); 
toc