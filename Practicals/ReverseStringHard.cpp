#include <conio.h>
#include <iostream>
#include <string>
using namespace std;

int main() {
  system("CLS");
  int length, reverse;
  string str;
  char temp;
  cout<<"Enter the String: "<<endl;
  getline(cin, str);
  length = str.length();
  reverse = length - 1;
  for(int i=0; i<length/2; i++) {
    temp = str[i];
    str[i] = str[reverse];
    str[reverse] = temp;
    reverse--;
  }
  cout<<"Reversed String: "<<endl<<str;
  getch();
  return 0;
}