require_relative './items'

class Music < Item
  attr_accessor :on_spotify

  def initialize(on_spotify, publish_date, archived, genre)
    super(on_spotify, publish_date, archived, genre)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super || @on_spotify
  end
end
