require 'player'
describe Player do
  let(:player) { Player.new(name: "Hugeorge")}
  describe "#name" do
    it "returns the player's name" do
      expect(player.name).to eq ("Hugeorge")
    end
  end
end