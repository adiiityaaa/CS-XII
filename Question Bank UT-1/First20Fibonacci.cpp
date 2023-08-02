#include <iostream>
#include <conio.h>
using namespace std;

int main() {
   int x,y,z,n;
   x = 0;
   y = 1;
   cout<<"First 20 Fibonacci Numbers:"<<endl;
   cout<<x<<endl; 
   cout<<y<<endl;
   for(int n=2; n<20; n++) {
    z=x+y;
    cout<<z<<endl;
    x=y;
    y=z;
   };
   getch();
}