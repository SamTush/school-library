require_relative '../people/student'
require 'json'

RSpec.describe Student do
  before(:each) do
    @student = Student.new(16, 'Jane Doe', 5678, parent_permission: true)
  end

  describe '#initialize' do
    it 'initializes with the correct attributes' do
      expect(@student.age).to eq(16)
      expect(@student.name).to eq('Jane Doe')
      expect(@student.id).to eq(5678)
      expect(@student.parent_permission).to eq(true)
      expect(@student.rentals).to eq([])
    end
  end

  describe '#play_hooky' do
    it 'returns the correct string' do
      expect(@student.play_hooky).to eq('¯\\(ツ)/¯')
    end
  end
end
