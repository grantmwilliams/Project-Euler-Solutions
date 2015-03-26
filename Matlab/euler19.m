%% Counting Sundays 19
clear;close all;clc;
tic

sundays = 0;

% Starts on Tuesday Jan 1, 1901
day=[0;1;0;0;0;0;0];

for year = 1901:1:2000
   
    for month = 1:12
        if month == 1 || 3 || 5 || 7 || 8 || 10 || 12
            days = 31;
            
        elseif month == 4 || 6 || 9 || 12
            days = 30;
            
        elseif days == 2 && mod(year,4) ~=0
                days = 28;
                
            else
                days = 29;
                
        end
        day = circshift(day,days);
        if day(7) == 1
            sundays = sundays + 1;
        end
    end
end

sundays
toc
   

