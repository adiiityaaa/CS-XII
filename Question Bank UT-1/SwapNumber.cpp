#include <iostream>
#include <conio.h>
using namespace std;

int main() {
    int x,y,z;
    cout<<"Enter two numbers: "<<endl;
    cin>>x>>y;
    z = x;
    x = y;
    y = z;
    cout<<"After swapping the numbers: "<<endl;
    cout<<"First Number: "<<x<<endl;
    cout<<"Second Number: "<<y<<endl;
    getch();
}