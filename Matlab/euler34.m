%% Digit Factorials 34
clear;close all;clc;
tic

facHash = factorial(0:1:9);
limit = 2540160;
final = 0;
i = 145;
for i = 3:limit
    x = i;
    temp  = 0;
    while (x > 0)
        y = mod(x,10);
        x = floor(x/10);
        temp = temp + facHash(y+1); 
    end
    
    if (i==temp)
        final = final + temp;
    end
end
disp(final);
toc