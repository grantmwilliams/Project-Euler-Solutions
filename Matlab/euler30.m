%% Digit Fifth Powers 30
clear;close all;clc;
tic
answer = 0;

numbers = 0:9;

n = 5;

nth = numbers.^n;

limit = n*(9^n);



for i = 10:limit

    number = 0;

    string = num2str(i);

    for j = 1:length(string)

        N      = str2double(string(j))+1;

        number = nth(N) + number;

        if number>i

            break

        end

    end

    if number == i

        answer = answer + i;

    end

end

toc



A = sum(answer);

fprintf('The answer is %.0d\n',A)

