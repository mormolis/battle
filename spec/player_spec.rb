require 'player'
describe Player do
  let(:player) { Player.new(name: 'Hugeorge') }
  describe '#name' do
    it "returns the player's name" do
      expect(player.name).to eq 'Hugeorge'
    end
  end

  describe '#take_hit' do
    it "should reduce hitpoints by #{Player::ATTACK_DAMAGE}" do
      expect { player.take_hit }.to change { player.hitpoints }.by -10
    end
  end
end
