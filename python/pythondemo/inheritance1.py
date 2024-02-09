class friends:
    def __init__(self,schoolfriends,collegefriends,brightfriends):
        self.schoolfriends=schoolfriends
        self.collegefriends=collegefriends
        self.brightfriends=brightfriends
    def invite(self):
        print("hai",self.schoolfriends,"bye",self.collegefriends,"hello",self.brightfriends)
# x=friends("geetha","priya","kalai")
# x.invite()
class aysha(friends):
    pass
x=aysha("geetha","priya","kalai")
x.invite()