#include <iostream>
#include <ctime>
using namespace std;

int main()
{
    //Clock stuff
    std::clock_t start;
    double duration;
    
    start = std::clock();
    
    //Actual Algorithm Here
    int a = 0;
    int b = 1;
    int c = 0;
    int sum = 0;
    
    
    while (sum <= 4000000) {
        c = a + b;
        a = b;
        b = c;
        if((b % 2)==0){
            sum += b;
        }
    }
    
    //Finish Clock Stuff
    duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
    
    std::cout<<"Elasped: "<< duration <<" seconds"<<'\n';
    
    //Print Answer to Algorithm
     printf("The sum is %d\n", sum);
    
    return 0;
}