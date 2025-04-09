class BooksController
  def index
    @books = Book.all
    View.render(@books)
  end
end
