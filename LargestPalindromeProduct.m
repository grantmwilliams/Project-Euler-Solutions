%% Palindrome Product
clear; close all; clc;



tic

palindromenew=0;

for i=999:-1:100

    for j=999:-1:100

    answer = i*j;

    str = num2str(answer);

    if all(str==str(end:-1:1))==1 && answer>palindromenew

        palindromenew = answer;

        break

    end

    if answer<palindromenew

        break

    end

    end

end

toc

fprintf('The largest palindrome is %.0d\n',palindromenew)