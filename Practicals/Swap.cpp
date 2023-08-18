#include <iostream>
#include <conio.h>
using namespace std;

int swap(int *p1, int *p2) {
  int temp;
  temp = *p1;
  *p1 = *p2;
  *p2 = temp;
  return 0;
}

int main() {
  system("CLS");
  int a,b;
  cout<<"Enter Two Numbers: "<<endl;
  cin>>a>>b;
  cout<<"Entered Numbers: "<<a<<" "<<b<<endl;
  swap(&a, &b);
  cout<<"Swapped Numbers: "<<a<<" "<<b;
  getch();
  return 0;
}