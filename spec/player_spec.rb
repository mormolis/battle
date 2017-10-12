require 'player'

describe Player do

  let(:player) { described_class.new('David')}

  it 'returns players names' do
    expect(player.name).to eq('David')
    expect(player.hp_value).to eq(60)
  end

  it 'reduces players score by 10 when attacked' do
    expect{player.attacked}.to change{player.hp_value}.by(-10)
  end

end
