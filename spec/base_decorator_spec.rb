require_relative '../nameable'
require_relative '../decorators/base_decorator'

RSpec.describe Decorator do
  before(:each) do
    @nameable = double('Nameable', correct_name: 'John Doe')
    @decorator = Decorator.new(@nameable)
  end

  describe '#initialize' do
    it 'initializes with the correct attributes' do
      expect(@decorator.nameable).to eq(@nameable)
    end
  end

  describe '#correct_name' do
    it 'returns the correct name of the nameable' do
      expect(@decorator.correct_name).to eq('John Doe')
    end
  end
end
