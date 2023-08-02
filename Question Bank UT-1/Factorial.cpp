#include <iostream>
#include <conio.h>
using namespace std;

int factorial(int x) {
  int fact = 1;
  for(int i=1; i<=x; i++) {
   fact=fact*i; 
  } 
  return fact;
}

int main()
{   
 system("CLS");
 int x,fact;
 cout<<"Enter the Number:\n";
 cin>>x;
 fact=factorial(x);
 cout<<"Factorial of "<<x<<" is "<<fact;
 getch();
}   