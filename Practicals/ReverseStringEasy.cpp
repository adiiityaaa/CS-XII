#include <iostream>
#include <conio.h>
#include <string>
#include <algorithm>
using namespace std;

int main() {
  system("CLS");
  string str;
  cout<<"Enter the String: "<<endl;
  getline(cin, str);
  reverse(str.begin(), str.end());
  cout<<"Reversed String: "<<endl<<str;
  getch();
  return 0;
}