#include <iostream>
#include <math.h>
int main(){
    //Clock Stuff
    std::clock_t start;
    double duration;
    start = std::clock();
    //Stop Clock Stuff
    
    int i=3,x=2;
    bool ifPrime=0;
    
    while (x<10001)
    {
        i+=2;
        for (int div=2;div<=sqrt(i);div++)
        {
            if (i%div==0) {ifPrime=0; break;}
            else ifPrime=1;
        }
        if (ifPrime==1) x++;
    }
    
    std::cout<<i<<std::endl;
    
    //std::cout << "The " << limit << " prime is:" << num << std::endl;
    
    duration = (std::clock() - start) / (double) CLOCKS_PER_SEC;
    std::cout<<"Elapsed Time: "<< duration << " seconds" << std::endl;
    return 0;
}