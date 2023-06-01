require_relative '../decorators/base_decorator'
require_relative '../decorators/capitalize_decorator'

RSpec.describe CapitalizeDecorator do
  before(:each) do
    @nameable = double('Nameable', correct_name: 'john doe')
    @capitalize_decorator = CapitalizeDecorator.new(@nameable)
  end

  describe '#correct_name' do
    it 'returns the capitalized name of the nameable' do
      expect(@capitalize_decorator.correct_name).to eq('John doe')
    end
  end
end
