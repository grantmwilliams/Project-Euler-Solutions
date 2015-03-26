%% Amicable Numbers 21
clear;close all;clc;


%% For Loop Method
clear;close all;clc;



num = 0;

tic

for i = 2:9999

    divisor = 1;

    for j = 2:sqrt(i)

       if mod(i,j) == 0 

           divisor = divisor + j +(i/j);

       end

    end

    if i==divisor || i==1

        divisor = 0;

    end

    divisors = 1;

    for j = 2:sqrt(divisor)

        if mod(divisor,j) == 0

            divisors = divisors + j +(divisor/j);

        end

    end

    if i == divisors

        num = num + divisor;

    end

end

