#include <iostream>
using namespace std;

// Function Name
int numbers();

int main()
{
    //Clock stuff
    std::clock_t start;
    double duration;
    
    start = std::clock();
    
    //Actual Algorithm Here
    int sum = 0;
    for (int i =1; i<1000; i++) {
        if (i%3 == 0 || i%5 == 0) {
            sum +=i;
        }
    }
    
    //Finish Clock Stuff
    duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
    
    cout<< "Elapsed: "<< duration << " seconds"<< endl;
    
    //Print Answer to Algorithm
    cout << "The Sum of Multiples of 3 and 5 below 1000 is: " << sum << endl;
    
    return 0;
}


