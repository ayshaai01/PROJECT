class friends:
    def __init__(self,schoolfriends,collegefriends,brightfriends):
        self.schoolfriends=schoolfriends
        self.collegefriends=collegefriends
        self.brightfriends=brightfriends
    def invite(self):
        print("hai",self.schoolfriends,"bye",self.collegefriends,"hello",self.brightfriends)
# x=friends("geetha","priya","kalai")
# x.invite()
#class aysha(friends):
 
#   pass
#x=aysha("geetha","priya","kalai")
#x.invite()
class aysha(friends):
    def __init__(self,schoolfriends,collegefriends,brightfriends,neighbouringfriends,phonefriends):
        self.neighbourfriends=neighbouringfriends
        self.cellfriends=phonefriends


        super().__init__(schoolfriends, collegefriends, brightfriends)
    def thanks(self):
            print("hi friends",self.schoolfriends,"hello collegefriends",self.collegefriends,"how r u all",self.brightfriends,"are u ready to language learning",self.neighbourfriends,"come we r ready to talk",self.cellfriends,"we are ready to chat")
x=aysha("pevi","yasmin","gouse bi","alfonza","monica")
x.thanks()
x.invite()