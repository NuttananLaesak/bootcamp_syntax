# book_repository.rb
class BookRepository
  def initialize
    @books = []
  end

  def add(book)
    if find_by_id(book.id)
      nil  
    else
      @books << book  
      book    
    end
  end

  def find_by_id(id)
    book_finded = @books.find do |book|book.id == id
    end
    book_finded
  end

  def delete(id)
    book_finded = find_by_id(id)
    @books.delete(book_finded)
  end

  def all
    list = []
    @books.each do |book| list << book.info
    end
    list
  end
end