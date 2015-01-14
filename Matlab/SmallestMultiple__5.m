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