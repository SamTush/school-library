require_relative '../nameable'
class Person < Nameable
  attr_reader :id, :parent_permission
  attr_accessor :name, :age, :rentals

  def initialize(age, name = 'Unknown', id = rand(1..10_000), parent_permission: true)
    super()
    @name = name
    @age = age
    @id = id
    @parent_permission = parent_permission
    @rentals = []
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  private :of_age?
end
