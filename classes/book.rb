class Book < Item
  def initialize(publisher, cover_state)
    super()
    @publisher = publisher
    @cover_state = cover_state
    @items = []
  end

  def can_be_archived?()
    super || cover_state = 'bad'
  end
end
