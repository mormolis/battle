class Game
  attr_reader :players, :header

  def initialize(player1, player2)
    @players = [player1, player2]
    @header = "#{player1.name} vs. #{player2.name}"
  end

  def attack(receiver)
    receiver.take_hit
    @players.reverse!
  end

  # def player1
  #   @players.first
  # end
  #
  # def player2
  #   @players.last
  # end
end
