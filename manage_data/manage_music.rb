require_relative '../includes'
require 'json'

class Handlemusic
  def initialize
    @music = if File.exist?('./data/music.json')
               JSON.parse(File.read('./data/music.json'), object_class: OpenStruct)
             else
               []
             end
  end

  def list_music
    if @music.length.positive?
      @music.each_with_index do |song, index|
        puts "[#{index + 1}]"
        puts "on spotify: #{song.on_spotify}"
        puts "archived: #{song.archived}"
        puts
      end
    else
      puts 'The music list is empty!'
    end
  end

  def list_genre
    if @music.empty?
      puts 'There are no genres yet'
    else
      @music.each_with_index do |genre, index|
        puts "#{index + 1}.genreName: #{genre.genre}"
      end
    end
  end

  def add_album
    puts

    print 'on spotify: '
    on_spotify = gets.chomp.strip.capitalize

    print 'publish date: '
    publish_date = gets.chomp.strip.capitalize

    print 'Kindly enter genre:'
    print 'name: '
    genre = gets.chomp.strip.capitalize

    print 'archived: '
    archived = gets.chomp.strip.capitalize

    album = Music.new(on_spotify, publish_date, genre, archived)
    newalbum = { on_spotify: on_spotify,publish_date: publish_date, genre: genre, archived: archived }
    @music << album
    if File.exist?('./data/music.json')
      file = File.read('./data/music.json')
      new_list = JSON.parse(file)
      new_list << newalbum
      File.write('./data/music.json', JSON.pretty_generate(new_list))
    else
      File.write('./data/music.json', JSON.pretty_generate([newalbum]), mode: 'a')
    end
    puts 'your album is created!'
  end
end
