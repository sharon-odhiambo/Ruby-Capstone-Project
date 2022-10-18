require 'json'
require_relative '../helper'

module ReadData
  def read_genre
    File.open('./data/genre.json', 'r') do |file|
      return if file.size.zero?

      genres_list = JSON.parse(file.read)
      genres_list.each { |genre| @genres << Genre.new(genre['name']) }
    end
  end

  def read_authors
    File.open('./data/authors.json', 'r') do |file|
      return if file.size.zero?

      authors_list = JSON.parse(file.read)
      authors_list.each { |author| @authors << Author.new(author['first_name'], author['last_name']) }
    end
  end

  def read_labels
    File.open('./data/labels.json', 'r') do |file|
      return if file.size.zero?

      labels_list = JSON.parse(file.read)
      labels_list.each { |label| @labels << Label.new(label['title'], label['color']) }
    end
  end

  def read_source
    File.open('./data/source.json', 'r') do |file|
      return if file.size.zero?

      sources_list = JSON.parse(file.read)
      sources_list.each { |source| @sources << Source.new(source['name']) }
    end
  end

end
