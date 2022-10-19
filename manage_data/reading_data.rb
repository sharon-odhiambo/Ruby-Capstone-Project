require 'json'
require_relative '../includes'

module ReadData
  def read_authors
    File.open('./data_files/authors.json', 'r') do |file|
      authors_list = JSON.parse(file.read)
      authors_list.each { |author| @authors << Author.new(author['first_name'], author['last_name']) }
    end
  end

  def read_games
    File.open('./data_files/game.json', 'r') do |file|
      stored_games = JSON.parse(file.read)
      stored_games.each do |game|
        @games << Game.new(
          game['name'],
          game['publish_date'],
          game['multi_player'],
          game['last_played_at']
        )
      end
    end
  end
end
