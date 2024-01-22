#include <iostream>

using namespace std;
class operatorsexample
{
    public:

    void addition()
    {int x,y;
    cin >>x>>y;
    cout<<"adding x and y\n"<<(x+y);
    }
    void subtraction()
    {int x,y;
    cin >>x>>y;
    cout<<"subtract x and y\n"<<(x-y);
    }
    void multiply()
    {
       int x,y;
       cin >>x>>y;
       cout<<"multiply x and y\n"<<(x*y);
    }
    void division();
    void modlus();
    void increment();
    void oddeven();

};
void operatorsexample::division()
{
   int x,y;
   cin>>x>>y;
   cout<<"dividing x and y\n"<<(x/y);
}
void operatorsexample::modlus()
{
    int x,y;
    cin>>x>>y;
    cout<<"modlus of x and y\n"<<(x%y);
}
void operatorsexample::increment()
{
     int x,y;
    cin>>x>>y;
    cout<<"increment of x \n"<<++x;
    cout<<"increment of y\n"<<++y;

}
void operatorsexample::oddeven()
{
    int a;
    cin>>a;
    if (a%2==0)
    {
       cout<<"this is even no\n";
    }
    else
    {
        cout<<"this is odd no";
    }
}

int main()
{
   operatorsexample op;
   op.addition();
   op.subtraction();
   op.multiply();
   op.division();
   op.modlus();
   op.increment();
   op.oddeven();
    return 0;
}
