require 'json'
require_relative '../includes'

module WriteData
  def write_games
    File.open('./data_files/game.json', 'w') do |file|
      games_to_store = []
      @games.each do |game|
        games_to_store << { name: game.name,
                            publish_date: game.publish_date,
                            multi_player: game.multi_player,
                            last_played_at: game.last_played_at }
      end
      file.write JSON.pretty_generate(games_to_store)
    end
  end
end
