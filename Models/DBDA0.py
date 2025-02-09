from copy import copy

from Models.BookDAO import BookDAO
from Models.UserDAO import UserDAO
from Models.AdminDA0 import AdminDA0

from Models.DB import DB

class DBDAO(DB) :
    def __init__(self,app):
        super(DBDAO,self).__init__(app)
        self.book = BookDAO(copy(self))
        self.user = UserDAO(copy(self))
        self.admin = AdminDA0(copy(self))
        