%% Highly Divisible Triangle Number 12
clear;close all;clc;
tic

d=0;
n=12000;
while d<=500
    d=0;
    n=n+1;
    t=n*(n+1)/2;
    for k=1:ceil(sqrt(t))
        if t/k==floor(t/k)
            d=d+1;
        end
    end
    d=2*d;
end
toc