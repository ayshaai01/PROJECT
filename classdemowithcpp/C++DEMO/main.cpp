/*#include<iostream>
using namespace std;
int main()
{
    int no1,no2,addition;
    cout<<"enter the value of no1 and no2\n";
    cin>>no1>>no2;
    addition =no1+no2;
    cout<<"added value is\n"<<addition;
    return 0;

}




















#include <iostream>

using namespace std;

int main()
{int value1,value2,total,op;

    cout <<"enter the value1\n";
    cin>>value1;
    cout<<"enter the value2\n";
    cin>>value2;
    cout<<"enter operator\n";
    cin>>op;
    switch(op)
    {
    case 1:
        cout<<"added value of a and b\n"<<(value1+value2);
        break;
    case 2:
        total = value1-value2;
        cout<<"subract value of a and b\n"<<total;
                break;
    case 3:
        cout<<"multiplying valu1 and valu2\n"<<(value1*value2);
        break;
    case 4:
        cout<<"dividing value 1 and value2\n"<<(value1/value2);
        break;
    case 5:
        cout<<"modlus of two value is\n"<<(value1%value2);
        break;
    case 6:
        cout<<"increment of value1 is\n"<<++value1;
        break;
    case 7:
        cout<<"decrement of value2 is \n"<<value2--;
        break;
    case 8:
        cout<<"assigning the value \n"<<(value1=value2);
        break;





    }

    return 0;
}*/
#include <iostream>
using namespace std;
class myfirstclass
{
public:
    int a=0;

 void multiply()
 {int x,y;
     cin>>x>>y;
     cout<<(x*y);
 }
 void subtract()
{int p,q,r;
    cin>>q>>r;
    p =q-r;
    cout<<p;


}

void division();
};
void myfirstclass::division()
{
    int u,v;
    cin>>u>>v;
    cout<<"dividing value is"<<(u/v);
}

int addition()
{int a,b,c;
    cin>>a>>b;
    c =a+b;
    cout<<c;


}

int main()
{ addition();
    myfirstclass mfc,mfc1;
    cout<<mfc.a;
mfc.multiply();
mfc1.subtract();
mfc.division();
    return 0;
}
