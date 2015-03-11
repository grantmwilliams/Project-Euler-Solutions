#include <iostream>

int main(){
    //Clock Stuff
    std::clock_t start;
    double duration;
    start = std::clock();
    //Stop Clock Stuff
    
    
    
    
    
    std::cout << "£2 can be generated in " << ways[200] << " number of ways" << std::endl;
    
    duration = (std::clock() - start) / (double) CLOCKS_PER_SEC;
    std::cout<<"Elapsed Time: "<< duration << " seconds" << std::endl;
    return 0;
}