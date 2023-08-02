#include <conio.h>
#include <iostream>
using namespace std;

class average { 
    private: 
    float a,b,c,d;
    public:
    int getdata();
    int calculate();
    int print();
};

int average::getdata() {
cout<<"Enter Three Numbers:"<<endl;
cin>>a>>b>>c;
}

int average::calculate() {
d=(a+b+c)/3;
}

int average::print() {
cout<<"Average of Given numbers is: "<<d;    
}

int main() {
    average obj;
    obj.getdata();
    obj.calculate();
    obj.print();
}