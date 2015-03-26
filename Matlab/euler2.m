%% Even Fibonacci Numbers

% Using Dynamic Programming
clear;close all;clc;
tic
fibonacci = zeros(1,50);
fibonacci(1) = 1;
fibonacci(2) = 2;

i = 2;
answer = 2;

while(fibonacci(i)<4e6)
    i=i+1;
    
    fibonacci(i)=fibonacci(i-1)+fibonacci(i-2);
    
    if mod(fibonacci(i),2)==0
        answer = answer+fibonacci(i);
    end
end
fprintf('The answer is: %.0d\n',answer);
toc

