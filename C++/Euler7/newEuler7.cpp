#include <iostream>
#include <math.h>
//nth prime = x.
int getLimit(int64_t n){
    double x = static_cast<double>(n);
    double logx = log(max(4.0, x));
    double pix = x / logx;
    
    return static_cast<int64_t>(pix);
}
int main(){
    std::cout << "Please input the nth prime you would like to find: " << std::endl;
    std::cin >> n >> std::endl;
    
    int64_t pix = getLimit(n);
    std::cout << "Pi(n): " << Pi << std::endl;
    
    return 0;
}