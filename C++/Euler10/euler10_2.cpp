#include <ctime>
#include <math.h>
#include <stdlib.h>
#include <iostream>
int main()
{
    
    //clock stuff
    std::clock_t start;
    double duration;
    start = std::clock();
    //stop clock stuf
    
    
    int limit=2000000;
    unsigned int i, j, k, x, y, z;
    unsigned long long int s=10;
    unsigned char *flag;
    
    flag = (unsigned char *)calloc(limit, sizeof(unsigned char));
    
    for(x=1; x<=sqrt(limit); x++)
    {
        for(y=1; y<=sqrt(limit); y++)	    //atkin's algorithm implementation//
        {
            z = 4*x*x + y*y;
            if(z<=limit && (z%60==1 || z%60==13 || z%60==17 || z%60==29 || z%60==37 || z%60==41 || z%60==49 || z%60==53))
            {
                flag[z] = !flag[z];
            }
            z = 3*x*x + y*y;
            if(z<=limit && (z%60==7 || z%60==19 || z%60==31 || z%60==43))
            {
                flag[z] = !flag[z];
            }
            z = 3*x*x - y*y;
            if(x>y && z<=limit && (z%60==11 || z%60==23 || z%60==47 || z%60==59))
            {
                flag[z] = !flag[z];
            }
        }
    }
    
    for(i=5; i<=sqrt(limit); i++)
    {
        if(flag[i]==1)
        {
            for(j=1; j * i*i <= limit; j++)
            {
                flag[j*i*i] = 0;	
            }		
        }
    }
    
    for(i=5; i<=limit; i++)
    {
        if(flag[i]==1)
        {
            s=s+i;
        }
    }	
    std::cout<<"Sum of primes below "<<limit<<" is: " <<s<<std::endl;
    
    //clock stuff again
    duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
    
    std::cout<<"Elapsed time: "<< duration <<" seconds" <<std::endl;
    //end clock stuff again
    
    return 0;
}