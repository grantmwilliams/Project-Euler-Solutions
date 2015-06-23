#include <iostream>
#include <vector>

using namespace std;

long checkFactorion(long num, vector<long> facHash){
  long sum = 0;
  long temp;

  /* Test facHash vector is okay*/
  for (int i = 0; i <= 9; i++){
    cout << "fachHash[" << i << "]: " << fachHash[i] << endl;
  }

  for (long x = num; x > 0; x /= 10){
    temp = x % 10;
    sum += facHash[temp];
  }
  
  cout << "Sum: " << sum << endl;
  if (sum == num){
    return true;
  }
  else{
    return false;
  }
}

int main(){

  /*Create a Factorial Lookup Table*/
  std::vector<long> facHash(10);
  facHash[0] = 1;
  for(int i = 1; i <= 9; i++){
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
