from App.Books import Books 

class BookManager():
    def __init__(self,DAO):
        self.misc = Books(DAO.db.book)
        self.dao =self.misc.dao

        def list (self,availaibilty =1,user_id=None):
            if user_id !=None:
                book_list =self.dao.listByUser(user_id)
            else:
                book_list = self.dao.list(availaibilty)

                return book_list
            
            def getReserveBookByUser(self,user_id):
                books = self.dao.getReserveBookByUser(user_id)
                 
                return books
            
            def getBook(self,id):
                books = self.dao.getBook(id)

                return books 
            
            def search(self,keyword,availaibility=1):
                books =self.dao.search_book(keyword,availaibility)

                return books
            
            def reserve(self,user_id,book_id):
                books = self.dao.reserve(user_id,book_id)
                
                return books
            
            def getUserBooks(self,user_id):
                books = self.dao.getBookByUser(user_id)

                return books
            
            def getUserBooksCount(self,user_id):
                books = self.dao.getBooksCountByUser(user_id)

                return books
            
            def delete(self,id):
                self.dao.delete(id)
