#include <iostream>

int main()
{
    // Boring Clock Stuff Begin //
    clock_t begin, end;
    double elapsed;
    
    begin = clock();
    // End Boring Clock Stuff  //
    
    
    //Begin Program
    int c, final;
    for (int a = 1; a < 500; ++a) {
        for (int b = a+1; b < 500; ++b) {
            for (c = b+1; c < 500; ++c) {
                if (a*a + b*b == c*c && a+b+c == 1000) {
                    final = a * b * c;
                    goto stop;      // Breaks for all 3 for loops
                }
            }
        }
    }
    
    
    stop:   // Location of goto
    end = clock();
    elapsed = (double)(end-begin) / CLOCKS_PER_SEC;
    
    printf("The Product Of The Pythagorean Triple Where a + b + c = 1000 is: %d \n", final);
    printf("Elapsed time is: %f seconds \n",elapsed);
    return 0;
    
}