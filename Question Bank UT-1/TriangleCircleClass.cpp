#include <iostream>
#include <conio.h>
using namespace std;

class area {
    private: 
    int r,b,h,ac,at;
    public:
    int getdata() {
     cout<<"Enter the Radius:"<<endl;
     cin>>r;
     cout<<"Enter the Base and Height:"<<endl;
     cin>>b>>h;
    }
    int triangle() {
    at=0.5*b*h;
    cout<<"Area of Triangle: "<<at<<endl;
    }
    int circle() {
     ac=3.14*r*r; 
     cout<<"Area of Cirle: "<<ac<<endl;   
    }
};

int main() {
    area obj;
    obj.getdata();
    obj.circle();
    obj.triangle();
    getch();
}