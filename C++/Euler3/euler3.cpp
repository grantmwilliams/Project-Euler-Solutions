
#include <iostream>
#include <math.h>
#include <ctime>
using namespace std;

int main()
{
    //Clock stuff
    std::clock_t start;
    double duration;
    
    start = std::clock();
    
    //Actual Algorithm Here
    long long int num = 600851475143;
    int LPF = 1;
    int i;
    
    for (i = 2; i <= sqrt(600851475143) && num != 1; i++)
    {
        while (num % i == 0)
        {
            num = num / i;
            LPF = i;
        }
    }
    
    //Finish Clock Stuff
    duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
    
    std::cout<<"Elapsed: "<< duration << " seconds"<<'\n';
    
    //Print Answer to Algorithm
    cout << LPF << endl;
    
    return 0;
}