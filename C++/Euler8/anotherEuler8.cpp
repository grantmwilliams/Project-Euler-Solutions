#include <iostream>
#include <vector>
#include <cctype>
using namespace std;

int print_adj(vector<int> const &);

int main() {
    // initializing vector... each element is a digit
    cout << "Enter the number (copy-paste can be used). "
    << "End with any non-digit character... " << endl;
    vector<int> digits; // vector for storing digits
    char ch; // one character at a time, end with a non-digit
    int num;
    while (cin >> ch && isdigit(ch)) {
        num = ch - '0';  // converting char to int
        digits.push_back(num);
    }
    print_adj(digits);
    return 0;
}

int print_adj(vector<int> const &vect) {
    long long product = 1, max = 0;
    cout << "How many adjacent digits? ";
    int adj = 0;
    cin >> adj;
    int counter = 1, index = 0;
    for (auto it = vect.begin(); it != vect.end() - adj - 1; ++it, ++counter) {
        for (auto it2 = it; it2 != it + adj; ++it2) {
            product *= (*it2);
        }
        if (max < product) {
            max = product;
            index = counter;
        }
        product = 1;
    }
    cout << "The greatest product of " << adj << " adjacent digits is:" << endl;
    for (int i = index - 1; i != index + adj - 1; ++i) {
        if (i == index + adj - 2) {
            cout << vect[i] << " = " << max;
            break;
        }
        cout << vect[i] << " x ";
    }
    cout << endl;
    return 0;
}