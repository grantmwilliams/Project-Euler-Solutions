#include <iostream>

int main(){
    //Clock Stuff
    std::clock_t start;
    double duration;
    start = std::clock();
    //Stop Clock Stuff
    
    int coins[9] = {0,1,2,5,10,20,50,100,200};
    
    int ways[201] = {1};
    for (int i = 1; i <= 8; ++i) {
        for (int j = coins[i]; j <= 200; ++j) {
            ways[j] += ways[j-coins[i]];
        }
    }
    
    std::cout << "£2 can be generated in " << ways[200] << " number of ways" << std::endl;
    
    duration = (std::clock() - start) / (double) CLOCKS_PER_SEC;
    std::cout<<"Elapsed Time: "<< duration << " seconds" << std::endl;
    return 0;
}