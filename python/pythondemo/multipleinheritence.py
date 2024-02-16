class parent():
    def __init__(self):
        print("family name is bright service")
    def adharaccess(self):
        print("need adhar card")
    def lab01(self):
        print("we have lab facilitiesfor acess")
    def classroom(self):
        print("you can acess classroom also")
class child(parent):
    def __init__(self):
        super().__init__()
        super().classroom()
        super().lab01()
        print("i am a student")
class visitor(child):
    pass     

v=visitor()
v.classroom()