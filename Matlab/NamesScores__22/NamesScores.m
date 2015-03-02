%% Names Scores 22
clear;close all;clc;
tic
load('namesData.mat'); % Load in my names file (replace with your name for it)

% Removes all "" marks from each name and alphabetizes list
names = sort(strrep( names(1,1:end),'"','')); 


final = 0;
for i = 1:length(names)
   n = int32(char(names(1,i)))-64;
 
   final = final + sum(n) * i;
end

disp(final);
toc
