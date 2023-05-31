require_relative '../people/teacher'

RSpec.describe Teacher do
  before(:each) do
    @teacher = Teacher.new(30, 'Math', 'John Smith', 4321, parent_permission: true)
  end

  describe '#initialize' do
    it 'initializes with the correct attributes' do
      expect(@teacher.age).to eq(30)
      expect(@teacher.specialization).to eq('Math')
      expect(@teacher.name).to eq('John Smith')
      expect(@teacher.id).to eq(4321)
      expect(@teacher.parent_permission).to eq(true)
      expect(@teacher.rentals).to eq([])
    end
  end

  describe '#can_use_services?' do
    it 'returns true' do
      expect(@teacher.can_use_services?).to eq(true)
    end
  end
end
