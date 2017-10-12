require_relative 'player'
class Game
  attr_reader :player1, :player2

  def initialize(player1_name, player2_name)
    @player1 = Player.new(name: player1_name)
    @player2 = Player.new(name: player2_name)
  end

  def attack(receiver)
    receiver.take_hit
  end

  
end