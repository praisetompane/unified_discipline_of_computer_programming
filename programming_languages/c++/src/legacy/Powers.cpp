#include <iostream>

using namespace std;

int main() {
    
    int pow = 1;
    
    for(int exp = 0; exp < 20;exp++)
    {
        cout << "The power of 2"<<" to " << exp << " is " << pow<<endl;
        pow *= 2;
    }
    //return 0;
}