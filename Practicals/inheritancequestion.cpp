//Write a  Program in Cpp to implement a class hierarchy, which takes roll number in student class, marks in sports and test class and displays the roll number and sum of all marks in result class.

#include <iostream.h>
#include <conio.h>

class student {
protected: int roll;
public: void getroll()  {
	clrscr();
	cout<<"Enter your Roll.no:"<<endl;
	cin>>roll;	}
	void showroll() {
	cout<<"Your entered roll no. is: "<<roll<<endl; }
	};

class test: public student {
protected: int mt1, mt2;
public: void gettmarks() {
	cout<<"Enter CS1 and CS2 Marks:"<<endl;
	cin>>mt1>>mt2; }
	void showtmarks() {
	cout<<"CS1 Marks: "<<mt1<<endl<<"CS2 Marks: "<<mt2<<endl; }
	};

class sports {
 protected: int spm, total;
 public: void getspm() {
	 cout<<"Enter Sports Marks: "<<endl;
	 cin>>spm; }
	 void showspm() {
	 cout<<"Sports Marks: "<<spm<<endl; }
};

class result: public sports, public test {
 protected: int total;
 public:
	 void final() {
	 total=mt1+mt2+spm;
	 cout<<"Your Roll No.: "<<roll<<endl<<"Total Marks: "<<total<<endl;
	 }
};

void main() {
 result obj;
 obj.getroll();
 obj.showroll();
 obj.gettmarks();
 obj.showtmarks();
 obj.getspm();
 obj.showspm();
 obj.final();
 getch();
}
