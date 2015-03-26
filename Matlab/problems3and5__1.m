% Solves Multiples of 3 and 5 Problem.
clear

%% Slow For Loop
clear;
tic
A = zeros(1,999);
for i = 1:999
    
    if mod(i,3) == 0 || mod(i,5) == 0
        
        A(i) = i;
    end
    
end

disp(sum(A));
toc



%% Vectorized Code
clear

tic
i = 1:999; 
disp(sum(i(mod(i,3)==0 | mod(i,5)==0)));
toc
%% Alternative Vectorized Code
clear

tic
disp(sum(0:3:999) + sum(0:5:999) - sum(0:15:999));
toc
%% Fastest Version
clear

tic
i=999; 
i3=floor(i/3);
i5=floor(i/5);
i15=floor(i/15);
disp((3*i3*(i3+1) + 5*i5*(i5+1) - 15*i15*(i15+1))/2);
toc

%% New Vectorized Code
clear

tic

A = 3:3:999;
B = 5:5:995;
C = 15:15:990;
disp(sum(A)+sum(B)-sum(C));

toc