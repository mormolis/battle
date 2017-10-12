require 'player'

describe Player do

  it 'returns players names' do
    name = 'David'
    player = Player.new(name)
    expect(player.name).to eq(name)
  end

end
