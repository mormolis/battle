require 'game'
describe Game do
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }
  let(:game) { described_class.new(player_1, player_2) }

  it 'initializes with two player instances' do
    expect(game.player_1).to eq player_1
  end
  describe '#attack' do
    it 'initiates an attack on the player given' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

end
