#include <iostream>

using namespace std;



int main()
{ string name;
    cout << "enter the name" << endl;
    cin>>name;
    cout <<name<<endl;
    fflush(stdin);
    cout<<"enter the name"<<endl;
    getline(cin,name);
    cout<<name<<endl;

    string firstname;
    cin>>firstname;
    string lastname;
    cin>>lastname;
    cout<<firstname+" "+lastname<<endl;
    string fullname = firstname.append(lastname);
    cout<<fullname<<endl;
 lastname.push_back('n');
cout<< lastname<<endl;
firstname.push_back('dr');
cout<<firstname<<endl;
cout<<firstname+" "+lastname<<endl;
cout<<fullname.length();
cout<<fullname.size();



    return 0;
}
