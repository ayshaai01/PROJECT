#include <iostream>

using namespace std;
class problems
{public:
    problems()
    {
        int x,y,z;
        cin>>x>>y>>z;
        cout<<"check the and operator\n"<<(x>y)&&(y>z);

    }
    problems(int x,int y, int z)
    {
        cout<<"check the or operator\n"<<(x>y)||(x>z);
    }

};
class usingfunction
{
public:
           void dividevalue()
       {int totalvalue;
           cin>>totalvalue;
           totalvalue /=20;
           cout<<"\nDivide equal is\n"<<totalvalue;
       }
       void concadenation()
      {

      string a,b,c;
      cin>>a>>b>>c;
      cout<<"concadenation is\n"<<(a+b+c);
      }

    void concadenation(string name1,string name2)
    {

     cout<<"concatenate two strings\n"<<(name1+name2);
    }


};

int main()
{
    problems pb;
    problems pb1(66,55,44);
    usingfunction uf,uf1,uf2;
    uf.dividevalue();
    uf1.concadenation();

    uf2.concadenation("mohamed","mahdi");



    return 0;
}
