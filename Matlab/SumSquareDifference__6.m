%% Sum Square Difference Vectorized
clear; close all; clc;
tic
x = 1:100;

sqSum = sum(x.^2);

sumSq = sum(x)^2;

final = sumSq - sqSum
toc;

%% Another Vectorized Attempt
clear; close all; 
x = 1:100;

tic
final = abs(sum(x.^2)-sum(x)^2)
toc

%% Using Loops
clear; close all;
tic

x = 100;
sumSq = 0;
sqSum = 0;

for i = 1:x
    sumSq = sumSq + i^2;
    sqSum = sqSum + i;
end
newSqSum = sqSum^2;
final = abs(sumSq-newSqSum)
toc