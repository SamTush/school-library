require_relative '../book'

class CreateDisplayBook
  attr_accessor :books

  def initialize
    @books = []
  end

  def list_all_books
    if @books.empty?
      puts 'No books available'
    else
      count = 0
      @books.each do |book|
        puts "Number: #{count += 1} Title: '#{book.title}', Author: #{book.author}"
      end
    end
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    puts 'Book created successfully'
    @books << book
  end
end
