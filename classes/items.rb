
require 'date'

class Item
  attr_reader :publish_date
  attr_accessor :archived, :genre, :author, :source, :label

  def initialize(genre, author, source, label, publish_date)
    @id = rand(1..1000)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
    @archived = archived
  end

end