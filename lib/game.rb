

class Game
  attr_reader :current_turn, :opposition

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = @players.first
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    #@current_turn = opposite_of(@current_turn)
    @players.reverse!
  end

  #def opposite_of(other_player)
    #@players.select { |player| player != other_player }.first
  #end
end
