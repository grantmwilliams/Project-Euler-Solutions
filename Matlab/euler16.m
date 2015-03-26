%% Power Digit Sum
clear;close all; clc;
tic

x = char(sym(2^1000));
final = 0;

for i =1:length(x)
    final = final + str2double(x(i));
end

toc
%% Attempt Number 2
clear; close all; clc;
tic 
final = double(feval(symengine, 'numlib::sumOfDigits',sym(2^1000))); 
toc