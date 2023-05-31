require_relative '../nameable'
require_relative '../people/person'

RSpec.describe Person do
  before(:each) do
    @person = Person.new(25, 'John Doe', 1234, parent_permission: true)
  end

  describe '#initialize' do
    it 'initializes with the correct attributes' do
      expect(@person.age).to eq(25)
      expect(@person.name).to eq('John Doe')
      expect(@person.id).to eq(1234)
      expect(@person.parent_permission).to eq(true)
      expect(@person.rentals).to eq([])
    end
  end

  describe '#of_age?' do
    it 'returns true if the person is of age' do
      expect(@person.send(:of_age?)).to eq(true)
    end
  end

  describe '#can_use_services?' do
    it 'returns true if the person can use services' do
      expect(@person.can_use_services?).to eq(true)
    end
  end

  describe '#correct_name' do
    it 'returns the correct name of the person' do
      expect(@person.correct_name).to eq('John Doe')
    end
  end
end
