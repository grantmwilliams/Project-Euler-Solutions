#include <iostream>
#include <vector>
#include <cmath> // std::sqrt
#include <algorithm> // std::fill
#include <chrono>

// implementation of sieve of eratosthenes.
long get_primes(const unsigned long limit)
{
    int count_lim = 10001;
    int total = 0;
    const int square_root = (int) std::sqrt((double) limit);

    // Vector to sieve with
    std::vector<char> primes(limit);

    // Set all values to true except 0 and 1
    std::fill(primes.begin() + 2, primes.end(),1);

    // sieve
    for (long i = 2; i <= square_root; i++)
    {
        if (primes[i])
        {
            for (long j = i * i; j <= limit - 1; j += i)
            {
                primes[j] = 0; // marks off multiples of j
            }
        }
    }

    // loop through and count primes
    for (int k = 0; k < primes.size(); k++)
    {
        if (primes[k])
        {
            ++total;
        }

        if (total == count_lim)
        {
            return k;
        }
    }

}

int main(){

    // start timing
    auto start = std::chrono::high_resolution_clock::now();

    // get answer
    std::cout << get_primes(150000) << "\n";


    // finish timing
    auto end = std::chrono::high_resolution_clock::now();

    auto diff = std::chrono::duration_cast<std::chrono::duration<double> > (end - start);

    // print timing
    std::cout << diff.count() << " seconds\n";

    return 0;
}