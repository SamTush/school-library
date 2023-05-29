require_relative './rental'
require_relative './refactor/create_display_book'
require_relative './refactor/create_display_teacher'
require_relative './refactor/create_display_student'

class App
  attr_accessor :people, :books

  def initialize
    @books = CreateDisplayBook.new
    @people = []
  end

  def list_all_books
    @books.list_all_books
  end

  def create_book
    @books.create_book
  end

  def list_all_people
    if @people.empty?
      puts 'No person created'
    else
      count = 0
      @people.each do |person|
        puts "Number: #{count += 1} [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
    end
  end

  def create_person
    print 'Do you want to create a student(1) or a teacher(2)? [Input the number]:'
    choice = gets.chomp.to_i

    case choice
    when 1
      create_student
    when 2
      create_teacher
    else
      puts 'Invalid choice. Please try again.'
      create_person
    end
  end

  def create_student
    students = CreateStudent.new
    student = students.create_student
    @people << student
  end

  def create_teacher
    teachers = CreateDisplayTeacher.new
    teacher = teachers.create_teacher
    @people << teacher
  end

  def create_rental
    if @books.books.empty? || @people.empty?
      puts 'Make sure there is a book to rent or a person to rent it'
    else
      puts 'Select a book from the following list by number'
      @books.list_all_books
      index = gets.chomp.to_i
      @selected_book = @books.books[index - 1]
      puts 'Select a person from the following list (not id)'
      list_all_people
      index = gets.chomp.to_i
      @selected_person = @people[index - 1]
      print 'Date: '
      date = gets.chomp
      Rental.new(date, @selected_book, @selected_person)
      puts 'Rental created successfully'
    end
  end

  def list_rentals_of_person
    print 'ID of Person: '
    id = gets.chomp.to_i
    person_selected = @people.select { |person| person.id == id }.first
    if person_selected.nil?
      puts 'No such person exists'
    else
      puts 'Rentals: '
      person_selected.rentals.map do |rental|
        puts "Date: #{rental.date}, Book '#{rental.book.title}' by #{rental.book.author}"
      end
    end
  end
end
