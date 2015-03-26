%% Pandigital Products
clear;close all;clc;
tic


P = unique(perms(1:9),'rows'); % All permutations of 1-9
pans = [];  %The final answer will be in pans

% Pandigital products must be a * bbbb = cccc
% or aa * bbb = cccc
for i = 1:length(P)
    a = P(i,1);
    bbbb = P(i,2)*1000 + P(i,3)*100 + P(i,4)*10 + P(i,5);
    cccc = P(i,6)*1000 + P(i,7)*100 + P(i,8)*10 + P(i,9);
    aa = P(i,1)*100 + P(i,2)*10 + P(i,3);
    bbb = P(i,4)*10 + P(i,5);
    if (a * bbbb == cccc)
        pans = [pans cccc];
    elseif (aa * bbb == cccc)
        pans = [pans cccc];
    end
    
end
disp(sum(unique(pans)));

toc

