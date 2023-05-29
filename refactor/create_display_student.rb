require_relative '../people/student'

class CreateStudent
  attr_accessor :student

  def initialize
    @student = []
  end

  def create_student
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    print 'Has parent permission? [Y/N]: '
    parent_permission = gets.chomp
    parent_permission = parent_permission.downcase != 'n'
    student = Student.new(age, name, parent_permission: parent_permission)
    puts 'Person created successfully'
    student
  end
end
