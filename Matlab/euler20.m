%% Factorial Digit Sum 20
clear; close all; clc;
tic 
disp(feval(symengine, 'numlib::sumOfDigits', prod(sym(1:100)))); 
toc

%% Faster Solution (Not Mine)
clear; close all; clc;
tic 
disp(sum(str2num(strread(char(prod(sym(1:100))),'%c')))); 
toc

