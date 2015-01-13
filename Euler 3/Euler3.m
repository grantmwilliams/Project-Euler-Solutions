function Euler3(prime)
    n = 2;
    while(mod(prime, n) ~= 0 && n <= prime)
        n = n + 1;
    end
    if n < prime
        Euler3(n)
        Euler3(prime/n)
    else
        n
    end
end 