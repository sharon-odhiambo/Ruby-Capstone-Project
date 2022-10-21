require_relative '../includes'

module GamesHandle
  def list_games
    if @games.empty?
      puts 'The game list is empty!'
    else
      @games.each_with_index do |game, index|
        puts "[#{index + 1}]"
        puts "Name: #{game.name}"
        puts "Multi Player: #{game.multi_player}"
        puts "Publish Date: #{game.publish_date}"
        puts "Last Played Date: #{game.last_played_at}"
        puts
      end
    end
  end

  def create_game
    puts
    print 'Name: '
    name = gets.chomp.strip.capitalize

    print 'Publish Date [YYYY-MM-DD]: '
    publish_date = gets.chomp.strip.capitalize

    print 'Multi Player [Y/N]: '
    choice = gets.chomp.strip.capitalize
    multi_player = choice == 'Y'

    print 'Last Played At [YYYY/MM/DD]: '
    last_played_at = gets.chomp.strip

    @games.push(Game.new(name, publish_date, multi_player, last_played_at))
    puts 'Game Created Successfully!'
  end
end
