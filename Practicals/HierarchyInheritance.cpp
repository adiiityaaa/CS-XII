//Write a  Program in Cpp to implement a class hierarchy, which takes roll number in student class, marks in sports and test class and displays the roll number and sum of all marks in result class.

#include <iostream>
#include <conio.h>
using namespace std;

class student {
protected: int roll;
public: int getroll()  {
	system("cls");
	cout<<"Enter your Roll.no:"<<endl;
	cin>>roll;
	return 0;	}
	int showroll() {
	cout<<"Your entered roll no. is: "<<roll<<endl; 
	return 0; }
	};

class test: public student {
protected: int mt1, mt2;
public: int gettmarks() {
	cout<<"Enter CS1 and CS2 Marks:"<<endl;
	cin>>mt1>>mt2;
	return 0; }
	int showtmarks() {
	cout<<"CS1 Marks: "<<mt1<<endl<<"CS2 Marks: "<<mt2<<endl;
	return 0; }
	};

class sports {
 protected: int spm, total;
 public: int getspm() {
	 cout<<"Enter Sports Marks: "<<endl;
	 cin>>spm;
	 return 0; }
	 int showspm() {
	 cout<<"Sports Marks: "<<spm<<endl; 
	 return 0; }
};

class result: public sports, public test {
 protected: float avg, total;
 public:
	 int final() {
	 total=mt1+mt2+spm;
	 avg=total/3;
	 cout<<"Your Roll No.: "<<roll<<endl<<"Total Marks: "<<total<<endl<<"Average Score: "<<avg<<endl;
	 return 0;
	 }
};

int main() {
 result obj;
 obj.getroll();
 obj.showroll();
 obj.gettmarks();
 obj.showtmarks();
 obj.getspm();
 obj.showspm();
 obj.final();
 getch();
 return 0;
}