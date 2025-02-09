class AdminDA0 ():
    db = {}

    def __init__(self,DA0): 
        self.db =DA0
        self.db.table = "admin"

    def getById(self,id):
        q = self.db.query("select * from @table where id  ='{}'".format(id))
        user = q.fetchone()

    def getByEmail(self,email):
        q = self.db.query("select * from @table where email id='{}'".format(email))
        user = q.fetchone()

        return user