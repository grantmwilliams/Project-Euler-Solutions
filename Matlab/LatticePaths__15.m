%% Lattice Paths 15

% Problem Explanation: 

% Starting in the top left corner of a 2×2 grid, there are 6 routes 
% (without backtracking) to the bottom right corner.

% How many routes are there through a 20×20 grid?

%% Mathematical Solution (Basically a Calculator):
clear; close all; clc;
tic
disp(int64(factorial(20 * 2) / (factorial(20) * factorial(2*20 - 20))));
toc
%% Expanded Combitronics Answer:
clear; close all; clc;

format long g

tic
% The Mathematics:

% $$(\frac{2N}{N}) = (\frac{n}{k})$$

% Can be expressed as: 

% $$(\frac{n}{k}) = \frac{n(n-1)(n-2)...(n-k+1)}{k(k-1)(k-2)...1} = \prod_{i=1}^{k}\frac{n-k+i}{i}$$

gridSize = 20;
paths = 1;
i = 0;
while i < gridSize 
    
    paths = paths * ((2*gridSize) - i);
    paths = paths / (i + 1);
    i = i+1;
end

disp(int64(paths));

toc


%% One More Combination Based Method
clear;close all;clc;
tic

x=1;
n = 20; % Number of Sides
for i = 1:n
    x = x * ((n+i)/i);
end

disp(x);
toc
%% Using A Generated Pascal Triangle To Find A Solution:
clear; close all; clc;
tic
format long g % Displays our answer without scientific notation

sideLength = 20;

n = 2*sideLength + 1;

d = zeros(n);

d(:,1) = 1;
d(2,2) = 1;

for i = 3:n
    d(i,i) = 1;
    for j = 2:i-1
        d(i,j) = d(i-1,j-1) + d(i-1,j);
    end
end

temp = max(d,[],2);
final = max(temp);

disp(final);
toc
