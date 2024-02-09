#include <iostream>

using namespace std;
namespace student{
    int x=2;
    void sample()
    {
        cout<<"enter the value";
    }
}
namespace student1{
      int x=5;
      void sample()
      {cout<<"value of student1";}}
int main()
{
    cout<<student::x<<endl;
    cout<<student1::x<<endl;
    student::sample();
    student1:: sample();
    return 0;
}
