require_relative '../includes'
require 'json'

class BookHandle
  def initialize
    @books = if File.exist?('./data/books.json')
               JSON.parse(File.read('./data/books.json'), object_class: OpenStruct)
             else
               []
             end
  end

  def list_books
    if @books.length.positive?
      @books.each_with_index do |book, index|
        puts "[#{index + 1}]"
        puts "Publisher: #{book.Publisher}"
        puts "Cover State: #{book.State}"
        puts "Publish Date: #{book.Date}"
        puts
      end
    else
      puts 'The book list is empty. Create a new book!'
    end
  end

  def list_labels
    if @books.empty?
      puts 'The label list is empty'
    else
      @books.each_with_index do |label, index|
        puts "#{index + 1}.Label Title: #{label.LabelTitle}, Color: #{label.LabelColor} "
      end
    end
  end

  def add_book
    puts

    print 'Publisher: '
    publisher = gets.chomp.strip.capitalize

    print 'Cover State: '
    cover_state = gets.chomp.strip.capitalize

    print 'Kindly enter the following information for the Labels:'
    print 'Title: '
    labeltitle = gets.chomp.strip.capitalize
    print 'Color: '
    labelcolor = gets.chomp.strip.capitalize

    print 'Publish Date [YYYY-MM-DD]: '
    publish_date = gets.chomp.strip.capitalize

    book = Book.new(publisher, cover_state, labeltitle, publish_date)
    newbook = { Publisher: publisher, State: cover_state, LabelTitle: labeltitle, LabelColor: labelcolor,
                Date: publish_date }
    @books << book
    if File.exist?('./data/books.json')
      file = File.read('./data/books.json')
      new_list = JSON.parse(file)
      new_list.push << newbook
      File.write('./data/books.json', JSON.pretty_generate(new_list))
    else
      File.write('./data/books.json', JSON.pretty_generate([newbook]), mode: 'a')
    end
    puts 'Book Created Successfully!'
  end
end
