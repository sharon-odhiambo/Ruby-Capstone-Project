require_relative '../includes'

describe Book do
  it 'takes two parameters and returns a Book object' do
    @book = Book.new('Shah', 'bad', 'Gift', 'Red', '2022/9/20')
    @book.should be_an_instance_of Book
  end

  it 'returns boolean' do
    book = Book.new('Shah', 'good', 'Gift', 'Red', '2022/9/20')
    newbook = book.can_be_archived?
    expect(newbook).to eq true
  end
end
