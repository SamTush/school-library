require_relative './person'
require 'json'
class Student < Person
  def initialize(age, name = 'Unknown', id = rand(1..10_000), parent_permission: true)
    super(age, name, id, parent_permission: parent_permission)
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
