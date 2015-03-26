%% Number Spiral Diagonals 28
clear;close all;clc;
tic
format long
sideLength = 1001;
n = (sideLength - 1) / 2;

final = ((16/3)*(n^3) + (30/3)*(n^2) + (26/3)*(n) + 1);

fprintf('The sum of diagonals of side length %d is: %d\n',sideLength,final);
toc

%% Other Implementation
clear;close all;clc;
tic
n1 = 1;
sum = 0;

for i=1:1001
  sum = sum + n1;
  df = floor(i/2) * 2;
  n2 = n1 + df;
  n1 = n1 + 2*i;
  sum = sum + n2;
end

final = sum - 1;

disp(final);

toc