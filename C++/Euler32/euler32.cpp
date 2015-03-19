#include <stdio.h>
#include <math.h>
#include <sstream>

bool isPandigitalProduct(string str) {
    unsigned length = str.length();
    
    //zero is not valid digit.
    if(str.find('0') != string::npos) {
        return false;
    }
    
    for ( unsigned i = 0 ; i < length ; ++i) {
        char a = str.at(0);
        str.erase(str.begin());
        if (str.find(a) != string::npos) {
            return false;
        }
    }
    
    return true;
}