%% Non-abundant Sums 23
clear;close all;clc;
tic

% NOT My Implementation - Going to Use to Test Vectorized vs Parallelized
% Versions


limit = 20161;

abundant = zeros(1,limit);

for i = 1:limit

    a_sum = 1;

    for j = 2:sqrt(i)

    if mod(i,j)==0

        if j == sqrt(i)

            a_sum = a_sum + j;

        else

            a_sum = a_sum + j + (i/j);

        end

    end

    end

    if a_sum>i

        abundant(i) = a_sum;

    end

end



A = find(abundant);

n = length(A);



list = zeros(n,n);



% Here we will generate a list of all sums of abundant numbers

for i = 1:n

    for j = 1:n

        list(i,j) = A(i) + A(j);

    end

end



z = unique(list);

N = length(z);

sum = 0;


parfor i = 1:limit

    if ~any(i==z)

        sum = sum+i;

    end

end

toc