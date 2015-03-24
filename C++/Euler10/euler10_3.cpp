#include <iostream>
#include <math.h>
#include <ctime>
using namespace std;

int main() {
    const long long upper = 2000000;
    long i = 0;
    int k = 0;
    const int lim = (sqrt(upper)+1);
    long long tot = 0;
    bool array[upper+1];
    
    
    //clock stuff
    std::clock_t start;
    double duration;
    start = std::clock();
    //stop clock stuff
    
    
    // begin by setting array to show all possible primes as true
    while (++i<upper+1){
        array[i] = true;
    }
    // now start to set multiples as false
    i = 2;
    while (i<=lim) {   //count through array 1 by 1 to sqrt of upper (i)
        
        if (array[i] == true) {   // test if that array index no. is true as a poss prime
            k = i*i; // set array mod loop var = main loop index (multiple in question)
            while (k <= upper+1){    // check all multiples up to upper
                array[k] = false;    // set all multiples as false (not prime)
                k = k + i;           // increment k up its times table
            }
        }
        i++;
    }
    array [1] = false; // clear index 1 as not prime (an exception)
    
    //Now loop to total the index numbers of the TRUE entries
    i=0;
    while (++i<= upper){
        if (array [i] == true) {
            tot += i; //add the TRUE index to the total
        }
    }
    cout << "Sum of primes below  " << upper << " is: " << tot << endl;
    
    //clock stuff again
    duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
    
    std::cout<<"Elapsed time: "<< duration <<" seconds" << endl;
    return 0;
}