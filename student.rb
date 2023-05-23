require_relative 'person'

module StudentModule
  class Student < Person
    attr_accessor :classroom

    def initialize(id, age, classroom, name = 'Unknown', parent_permission: true)
      super(id, age, name, parent_permission)
      @classroom = classroom
    end

    def play_hooky
      "¯\\(ツ)/¯"
    end
  end
end
