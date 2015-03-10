#include <iostream>
#include <ctime>

int main(int, char*[]){
    //Clock Stuff
    std::clock_t start;
    double duration;
    start = std::clock();
    
    int sums = 0;
    int sqSums = 0;
    int final;
    
    for (int i = 1; i<= 100; i++){
        sums += i;
        sqSums = i*i;
    }
    sums *= sums;
    
    final = sums - sqSums;
    
    std::cout << "The Sum Square Difference is: " << final << std::endl;
    
    duration = ( std::clock() - start) / (double) CLOCKS_PER_SEC;
    
    std::cout<<"Elapsed Time: "<< duration << " seconds" << std::endl;
    return 0;
}