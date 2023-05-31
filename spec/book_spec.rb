require_relative '../book'

RSpec.describe Book do
  before(:each) do
    @book = Book.new('The Great Gatsby', 'F. Scott Fitzgerald')
  end

  describe '#initialize' do
    it 'initializes with the correct attributes' do
      expect(@book.title).to eq('The Great Gatsby')
      expect(@book.author).to eq('F. Scott Fitzgerald')
      expect(@book.rentals).to eq([])
    end
  end
end
