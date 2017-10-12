require 'game'
describe Game do
  let(:player_2) {double :player_2}
  describe '#attack' do
    it 'initiates an attack on the player given' do
      expect(player_2).to receive(:receive_damage)
      subject.attack(player_2)
    end
  end

end
