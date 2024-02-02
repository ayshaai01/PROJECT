#include <iostream>

using namespace std;


int main()
{
    int a=10, b=20;
    cout<<"value of a      :\n"<<a;
    cout<<"Address of a    :" <<&a<<endl;
    cout<<"-----------\n";
    cout<<"value of b      : \n"<< b;
    cout<<"address of B    : \n"<<&b;
    cout<<"-----------\n";

    int *p=&a;
    cout<<"value of p                          :  \t\n"<< p;
    cout<<"address of p                        :  \t\n"<< &p;
    cout<<"value stored in the address of p    :  \t\n"<< *p;
    cout<<"-----------\n";

    int **q=&p;
    cout<<"value of q                                              : \n"<<q;
    cout<<"address of q                                            : \t\n"<< &q;
    cout<<"value stored in the address of q to the address of p    :  \t\n"<< **q;

    int ***r=&q;
    cout<<"value of r                                                                  : \t\n"<< r;
    cout<<"address of r                                                                : \t\n"<< &r;
    cout<<"value stored in the address of r to the address of q in the address of p    : \n"<< ***r;

    void *s=&a;
    cout<<"value of s                                                                  :  \t\n"<< s;
    cout<<"address of s                                                                :  \t\n" <<s;
    cout<<"value stored  in the address of s in the address of r to the address of q in the address of p    :  \t\n"<< *(int*)s;

    return 0;
}
