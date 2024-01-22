#include <iostream>
using namespace std;
class votingeligible
{
public:
     votingeligible()
{
    int age;
    cout<<"enter the value of age\n";
    cin>>age;
    if(age>=18)
    {
        cout<<"eligible for vote\n";
            }
            else{
                cout<<"not eligible for voting\n";
            }
}
votingeligible(int age)
{
    if(age>=18)
    {
        cout<<"eligible to vote from second constructor\n";
    }
    else
    {
        cout<<"not eligible from second constructor\n";
    }
}
void checkingage(int age)
{
    if (age>=18)
    {
        cout<<"u are eligible";}
        else
        {
            cout<<"u are not eligible";
        }
    }

};
int main()
{
   votingeligible vc ;
   int age;
   cin>>age;
   votingeligible vc1(age);
   vc.checkingage(23);
   return 0;
}
