%% Special Pythagorean Tripple
clear; close all; clc;
tic

stop = 1000;
check = 0;
for i = 1:1000
    
    for j = 1:1000
        
        k = i^2 + j^2;
        
        if sqrt(k) + i + j == 1000
            
            check = 1;
            
            final = sqrt(k)*i*j;
            break
        end
        
    end % Ends inner j loop
    
    if check == 1
        
        break
    end
    
    
end % Ends outer i loop

toc

final
