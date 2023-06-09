require_relative './person'
class Teacher < Person
  attr_reader :specialization

  def initialize(age, specialization, name = 'Unknown', id = rand(1..10_000), parent_permission: true)
    super(age, name, id, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
