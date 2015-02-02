#include <iostream>
using namespace std;

// Function Name
int numbers();

int main()
{
    int ans = numbers();
    cout << "\n The sum of the numbers divisible by 3 or 5 and less than 1000 is: ";
    cout << ans << endl;

    return 0;
}

// Begin Function
int numbers()
{
    int n = 0;
    for(int i=1;i<1000;i++)
    {
        if((i%3)==0||(i%5)==0)
        {
            n += i;
        }
    }
    return n;
}
