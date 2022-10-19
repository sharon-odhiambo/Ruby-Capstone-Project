require_relative './items'

class Book < Item
  attr_accessor :archived

  def initialize(publisher, cover_state, label, publish_date)
    super
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?()
    archived = true || cover_state = 'bad'
  end
end
