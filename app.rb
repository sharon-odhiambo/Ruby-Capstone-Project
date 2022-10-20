require 'io/console'
require_relative './includes'

class App
  include StaticDataHandle
  include GamesHandle
  include ReadData
  include WriteData

  def initialize
    @books = BookHandle.new

    @music = Handlemusic.new

    @games = []
    read_games

    @authors = []
    read_authors
  end

  def menu
    puts 'Welcome To the Catalog of things'
    puts
    puts 'Please enter option number 1 - 10 to begin'
    puts '1 - List all books'
    puts '2 - List all music albums'
    puts '3 - List all games'
    puts '4 - List all genres'
    puts '5 - List all labels'
    puts '6 - List all authors'
    puts '7 - Add a book'
    puts '8 - Add a music album'
    puts '9 - Add a game'
    puts '10 - Exit'
  end

  def selected(choice)
    case choice
    when 1
      puts
      @books.list_books
    when 2
      puts
      @music.list_music
    when 3
      puts
      list_games
    when 4
      puts
      @music.list_genre
    when 5
      puts
      @books.list_labels
    when 6
      puts
      list_authors
    when 7
      puts
      @books.add_book
    when 8
      puts
      @music.add_album
    when 9
      puts
      create_game
      write_games
    when 10
      puts 'Thanks For Using Our Program =(MYZ Team)='
      exit
    else
      puts 'Invalid option'
    end
  end

  def run
    choice = 0
    while choice != 10
      menu
      puts
      print 'Please select on option : '
      choice = gets.chomp.strip.to_i
      selected(choice)
      print 'Continue....'
      $stdin.getch
    end
  end
end
