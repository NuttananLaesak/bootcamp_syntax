# book_service.rb
class BookService
  def initialize(repository = BookRepository.new)
    @repository = repository
  end

  def add_book(id, title, auther)
    book = Book.new(id, title, auther)
    @repository.add(book)
  end

  def update_book(id, title:nil, author:nil)
    book = @repository.find_by_id(id)
    book&.title = title unless nil?
    book&.author = author unless nil?
    book
  end

  def delete_book(id)
    @repository.delete(id)
  end

  def list_books
    @repository.all
  end
end