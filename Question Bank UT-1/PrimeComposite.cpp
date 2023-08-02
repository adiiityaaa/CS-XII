#include <iostream>
#include <conio.h>
using namespace std;

int main() {
    int x;
    bool prime = true;
    cout<<"Enter the Number:\n";
    cin>>x;
    if(x == 1 || x==0) { cout<<"Nor Prime Nor Composite."; exit(0); }
    for(int n=2; n<= x/2; n++) {
     if(x%n == 0) { prime = false; }
    } 
    if(prime) { cout<<"Prime"; } else { cout<<"Composite"; }
    getch(); 
}