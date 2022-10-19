require_relative '../includes'

describe Music do
  it 'takes one parameter and returns an Items object' do
    @music = Music.new('on_spotify', 'publish_date', 'archived','genrename')
    @music.should be_an_instance_of Music
  end
end
