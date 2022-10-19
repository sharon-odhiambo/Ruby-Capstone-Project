require_relative '../includes'

module StaticDataHandle
  def list_authors
    @authors.each_with_index do |author, index|
      puts "#{index + 1}.Author Name: #{author.first_name} #{author.last_name}"
    end
  end
end
