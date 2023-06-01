require_relative '../classroom'

RSpec.describe Classroom do
  before(:each) do
    @classroom = Classroom.new('Math')
    @student = double('Student', classroom: nil)
    allow(@student).to receive(:classroom=)
  end

  describe '#initialize' do
    it 'initializes with the correct attributes' do
      expect(@classroom.label).to eq('Math')
    end
  end

  describe '#add_student' do
    it 'adds a student to the classroom' do
      @classroom.add_student(@student)
      expect(@classroom.instance_variable_get(:@students)).to include(@student)
    end

    it 'does not add a student to the classroom if they are already in it' do
      @classroom.add_student(@student)
      expect(@classroom.instance_variable_get(:@students).size).to eq(1)
      @classroom.add_student(@student)
      expect(@classroom.instance_variable_get(:@students).size).to eq(1)
    end

    it 'sets the classroom of the student' do
      expect(@student).to receive(:classroom=).with(@classroom)
      @classroom.add_student(@student)
    end
  end
end
