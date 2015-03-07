


#include <ctime>
#include <iostream>

int palindrome(int x) {
    int n = 0;
    while (x) {
        n *= 10; n += x % 10; x /= 10;
    }
    return n;
}

int main() {
    
    std::clock_t start;
    double duration;
    
    start = std::clock();
    
    int final = 0;
    for (int x = 999; x >= 100; --x) {
        for (int y = 999; y >= 100; --y) {
            const int n = x * y;
            if (n == palindrome(n) && n > final)
                final = n;
        }
    }
    std::cout << final << std::endl;
    
    
    duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
    
    std::cout<<"printf: "<< duration <<'\n';
    return 0;
}