#include <iostream>
#include <stdlib.h>
#include <vector>
#include <omp.h>

using namespace std;

long checkFactorion(long num, vector<int> facHash){
  long sum = 0;
  int temp;
  for (long x = num; x > 0; x /= 10){
    temp = x % 10;
    sum += facHash[temp];
  }

  if (sum == num){
    return true;
  }
  else{
    return false;
  }
}

int main(){

  /*Create a Factorial Lookup Table*/
  std::vector<int> facHash(10);
  facHash[0] = 1;
  for(int i = 1; i<10; i++){
    facHash[i] = facHash[i-1] * i;
  }

  for (long num = 40728; num < 40732; num++){
    if (checkFactorion(num, facHash)){
      cout << num << " is a factorion!" << endl;
    }
    else{
      cout << num << " NOT a factorion :(" << endl;
    }
  }

  return 0;
}
