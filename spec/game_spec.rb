require_relative '../classes/game'

describe Game do
  before do
    @game = Game.new('chass', '2005-10-10', true, '2018-10-14')
  end

  describe 'check instance of Game' do
    it 'should be instance of Game' do
      expect(@game).to be_instance_of(Game)
    end
  end

  it 'Creating a new Game' do
    expect(@game.name).to eq('chass')
    expect(@game.publish_date).to eq('2005-10-10')
    expect(@game.multi_player).to eq(true)
    expect(@game.last_played_at).to eq('2018-10-14')
  end

  it 'should return true if the game is not played in the last 2 years' do
    expect(@game.can_be_archived?).to eq(true)
  end
end
