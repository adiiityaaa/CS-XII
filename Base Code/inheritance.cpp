#include <iostream>
#include <conio.h>
using namespace std;

class base {
 protected: int a=1,b=2;
 public:
 int getnum() {
    system("CLS");
    cout<<"Enter Numbers: "<<endl;
    cin>>a>>b;
    return 0;
 }
};

class derived: public base {
 int sum;
 public:
 int add() {
    sum = a+b;
    cout<<"Sum of Numbers is: "<<sum;
    return 0;
 }
};

int main() {
 derived obj;
 obj.getnum();
 obj.add();
 getch();
}