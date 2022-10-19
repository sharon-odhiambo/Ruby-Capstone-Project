class Album < Item
  def initialize(on_spotify)
    super
    @on_spotify = true
  end

  def can_be_archived?()
    super || on_spotify = true
  end
end
