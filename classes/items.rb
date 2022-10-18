require 'date'

class Item
  attr_reader :publish_date, :archived
  attr_accessor :genre, :author, :label

  def initialize(publish_date)
    @id = rand(1..1000)
    @genre = genre
    @author = author
    @label = label
    @publish_date = publish_date
    @archived = archived
  end

  def move_to_archive
    @archived = can_be_archived?
  end

  private

  def can_be_archived?
    Date.today.year - Date.parse(@publish_date).year > 10
  end
end
