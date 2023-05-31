require_relative '../rental'

RSpec.describe Rental do
  before(:each) do
    @book = double('Book', rentals: [])
    @person = double('Person', rentals: [])
    @rental = Rental.new('2022-01-01', @book, @person)
  end

  describe '#initialize' do
    it 'initializes with the correct attributes' do
      expect(@rental.date).to eq('2022-01-01')
      expect(@rental.book).to eq(@book)
      expect(@rental.person).to eq(@person)
    end

    it 'adds the rental to the book and person rentals' do
      expect(@book.rentals).to include(@rental)
      expect(@person.rentals).to include(@rental)
    end
  end
end
