require_relative 'spec_helper'

describe Book do
  it 'takes two parameters and returns a Book object' do
    @book = Book.new('Shah', 'bad')
    @book.should be_an_instance_of Book
  end

  it 'returns boolean' do
    book = Book.new('Shah', 'good')
    newbook = book.can_be_archived?()
    expect(newbook).to eq true
  end
end