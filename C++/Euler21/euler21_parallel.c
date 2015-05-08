#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

unsigned int sum_divisors(unsigned int n) {
    unsigned int s = 0, i = 1;
    while(i < n) {
        if(n % i == 0) s = s + i;
        i++;
    }
    return s;
}

int main(int argc, char **argv) {
    unsigned int a, b, nthreads, result = 0;
    
#pragma omp parallel
    nthreads = omp_get_num_threads();
    printf("no of threads %d\n", nthreads);
    
#pragma omp parallel for reduction(+:result) private(b)
    for(a=0; a < 10000; a++) {
        b = sum_divisors(a);
        if(b > a && sum_divisors(b) == a) result = result + a + b;
    }
    
    printf("result: %d\n",result);
    return 0;
}