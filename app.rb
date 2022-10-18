require 'io/console'

class App

  include StaticDataHandle
  include ReadData
  include WriteData

  def initialize
  end

  def menu
    puts 'Welcome To the Catalog of things'
    puts
    puts 'Please enter option number 1 - 11 to begin'
    puts '1 - List all books'
    puts '2 - List all music albums'
    puts '3 - List all games'
    puts '4 - List all genres'
    puts '5 - List all labels'
    puts '6 - List all authors'
    puts '7 - List all sources'
    puts '8 - Add a book'
    puts '9 - Add a music album'
    puts '10 - Add a game'
    puts '11 - Exit'
  end

end
