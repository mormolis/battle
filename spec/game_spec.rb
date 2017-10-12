require 'game'

describe Game do
  let(:game) { Game.new('player1','player2')}
  let(:player) { double(:player, :take_hit => true)}
  describe "#initialize" do
    it "should return player one's name" do
      expect(game.player1.name).to eq "player1"
    end
    it "should return player two's name" do
      expect(game.player2.name).to eq "player2"
    end
  end

  describe "#attack" do
    it "should call Player#take_hit" do
      expect(player).to receive(:take_hit)
      game.attack(player)
    end
  end
end