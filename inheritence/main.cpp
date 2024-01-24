#include <iostream>

using namespace std;
class wood
{public:
    string name="teak\n";
    void messageprint(){

    cout<<"teak's garden\n";


}



};
class chinateakwood
{public:
    string woodtypename="china teak\n";
    void messageprintf(){

    cout<<"china teak's garden\n";
    }


};

class teak:public wood, public chinateakwood{
};

int main()
{
    teak tk;
    cout<<tk.name;
    cout<<tk.woodtypename;
    tk.messageprint();
    tk.messageprintf();
    return 0;
}
