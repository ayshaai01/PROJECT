class grandparents:
    def _init_(self, grandpaname, grandmaname, familyname):


        self.grandfathername=grandpaname
        self.grandmothername=grandmaname
        self.familyname=familyname
    def welcome(self):
         print("welcome to ",self.familyname,"wishes from",self.grandfathername,"and", self.grandmothername)

x=grandparents("kalaingar", "dhayalu ammal", "dmk")
x.welcome()

        


