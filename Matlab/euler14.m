%% Longest Collatz Sequence 14
clear; close all; clc;

tic
best = 0;
for i = 1:1e6

    n = i;
    current = 1;
   
    while n~=1
        
        if mod(n,2) == 0
            
            n = n/2;
            
        else
            n = n*3 +1;
            
        end
        
        current = current + 1;
    end
    
    if best < current
        
        best = current;
        number = i;
 
    end
    
    
end

best
number
toc

%% Speed Up Attempt: Parfor Loop
clear; close all; clc;
tic

