require_relative './items'

class Book < Item
  attr_accessor :publisher, :cover_state, :labeltitle, :labelcolor

  def initialize(publisher, cover_state, labeltitle, labelcolor, publish_date)
    super(genre, author, label, publish_date)
    @publisher = publisher
    @cover_state = cover_state
    @labeltitle = labeltitle
    @labelcolor = labelcolor
  end

  def can_be_archived?()
    archived = true || cover_state = 'bad'
  end
end
