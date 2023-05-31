require_relative '../decorators/base_decorator'
require_relative '../decorators/trimmer_decorator'

RSpec.describe TrimmerDecorator do
  before(:each) do
    @nameable = double('Nameable', correct_name: 'John Doe')
    @trimmer_decorator = TrimmerDecorator.new(@nameable)
  end

  describe '#correct_name' do
    it 'returns the trimmed name of the nameable if it is longer than 10 characters' do
      expect(@trimmer_decorator.correct_name).to eq('John Doe')
    end

    it 'returns the full name of the nameable if it is shorter than or equal to 10 characters' do
      allow(@nameable).to receive(:correct_name).and_return('Johnmmmmmmmmmm')
      expect(@trimmer_decorator.correct_name).to eq('Johnmmmmmm')
    end
  end
end
