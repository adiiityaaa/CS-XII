#include <iostream>
using namespace std;

class abc {
  private: 
  protected:
  public: 
  int base() {
    cout<<"Hello World";
    return 0;
  }
};

int main() {
    abc obj;
    obj.base();
}