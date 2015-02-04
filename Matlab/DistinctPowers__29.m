%% Distinct Powers 29
clear;close all;clc;
tic
x = [];
for a = 2:100
    for b = 2:100
        x = [x a^b];
    end
end

disp(length(unique(sort(x))));

toc