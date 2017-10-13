
class Game
  attr_reader :current_turn, :players
  
  def initialize(player_1, player_2)
    
    @players = [player_1, player_2]
    @current_turn = @players.first

  end

  # class << self
  #   set_current_game(player_1,player_2)
  #     @@current_game = Game.new(player_1, player_2)
  #   end
  #   def current_game
  #     @@current_game
  #   end

  # end  
  def self.set_current_game(player_1, player_2)
    @current_game = Game.new(player_1, player_2)
  end

  def self.current_game
    @current_game
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
    @players.reverse!
  end

  def path_to_string
    if players.last.hp_value <= 0 
      return '/game_over'
    else
      switch_turn
      return '/play'
    end
  end
  
end
