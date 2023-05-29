require_relative '../people/teacher'

class CreateDisplayTeacher
  attr_accessor :teacher

  def initialize
    @teacher = []
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    teacher = Teacher.new(age, specialization, name)
    puts 'Person created successfully'
    teacher
  end
end
