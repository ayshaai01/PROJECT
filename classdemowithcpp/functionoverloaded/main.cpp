#include <iostream>

using namespace std;
class functionoverloading
{
public:
    void addition()
    {
        int a,b;
        cin>>a>>b;
        cout<<"adding two values\n"<<(a+b);

    }
    float subtraction()
    {
        float a,b;
        cin>>a>>b;
        cout<<"\nsubtracting two values\n"<<(a-b);
    }
    void addition(int x, int y,int z)
{


    cout<<"adding three values\n"<<(x+y+z);
}

float additionf()
{
    float p=10.2,q=5.3;
cout<<"adding two float values\n"<<(p+q);
}

 float additionf(float p,float q,float r,float s)
 {

 cout<<"adding four values\n"<<(p+q+r+s);
 }

 };

int main()
{
functionoverloading fol;
fol.addition();
fol.subtraction();
fol.addition(3,4,5);
fol.additionf();
fol.additionf(4.6,6.5,3.2,1.1);
    return 0;
}
