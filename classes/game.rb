require_relative './items'
require 'date'

class Game < Item
  attr_accessor :name, :multi_player, :last_played_at

  def initialize(name, publish_date, multi_player, last_played_at)
    super(genre, author, label, publish_date)
    @id = rand(1..1000)
    @name = name
    @multi_player = multi_player
    @last_played_at = last_played_at
  end

  def can_be_archived?
    super && (Date.today.year - Date.parse(@last_played_at).year > 2)
  end
end
