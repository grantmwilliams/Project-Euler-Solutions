%% Smallest Multiple
tic

limit = 1e10;

N = 20;

for i = N:N:limit

    for j = N:-1:1

    if mod(i,j) ~= 0

        break

    end

    end

    if j == 1

        answer = i;

        break

    end

end

fprintf('The smallest evenly divisible number is %.0d\n',answer)

toc

%% Faster Version
clear;close all;clc;
tic
final = 1;
for i = 1:20
    final = lcm(final,i);
end
disp(final);
toc
