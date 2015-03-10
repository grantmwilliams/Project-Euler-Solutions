


#include <ctime>
#include <iostream>

int gcd(int a, int b){
    int tmp;
    while (a) {tmp = a; a = b % a; b = tmp;}
    return b;
    
}

int lcm(int a, int b){
    return a * b / gcd(a,b);
}

int main() {
    
    std::clock_t start;
    double duration;
    int Final = 1;
    start = std::clock();
    
    for (int i =1; i <= 19; i++){
        Final = lcm(Final,i);
    }
    
    
    std::cout << "Smallest Number Divisible By 1-20 is: " << Final << std::endl;
    
    
    duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
    
    std::cout<<"Elapsed Time: "<< duration << " seconds" << '\n';
    return 0;
}