class grandparents:
    def __init__(self, grandpaname, grandmaname, familyname):

        self.grandfathername=grandpaname
        self.grandmothername=grandmaname
        self.familyname=familyname

    def welcome(self):
         print("welcome to ",self.familyname, "wishes from", self.grandfathername, "and", self.grandmothername)

# x=grandparents("kalaingar", "dhayalu ammal", "dmk")
# x.welcome()
# class mkazhagiri(grandparents):    
#     pass
# x=mkazhagiri("kalaingar" ,"dhayalu ammal" ,"dmk")
# x.welcome()
class mkazhagiri(grandparents):
    def __init__(self,grandpaname,grandmaname,familyname,fathername,mothername):

        self.fathername=fathername
        self.mothername=mothername
        super().__init__(grandpaname,grandmaname,familyname)
    def thanks(self):
        print("hi grandpa",self.grandfathername,"and grandma",self.grandmothername,"we",self.fathername,"and",self.mothername,"thankyou for your warm aelcome to our",self.familyname,"family")
x=mkazhagiri("kalaingar","dhayaluammal","dmk","mkazagiri","kandhi azagiri")
x.welcome()
x.thanks()