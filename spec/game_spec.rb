require 'game'

describe Game do
  let(:player1) { double(:player, name: 'player1') }
  let(:player2) { double(:player, name: 'player2') }
  let(:game) { Game.new(player1, player2) }
  describe '#initialize' do
    it "should return player one's name" do
      expect(game.players.first.name).to eq 'player1'
    end
    it "should return player two's name" do
      expect(game.players.last.name).to eq 'player2'
    end
  end

  describe '#attack' do
    it 'should call Player#take_hit' do
      expect(player1).to receive(:take_hit)
      game.attack(player1)
    end
  end
end
