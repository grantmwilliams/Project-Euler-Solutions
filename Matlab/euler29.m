%% Distinct Powers 29
clear;close all;clc;
tic
x = zeros(99^2,1); i = 0;
for a = 2:100
    for b = 2:100
        i = i+1;
        x(i) = a^b;
    end
end

disp(length(unique(x)));

toc