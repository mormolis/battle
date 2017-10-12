class Game
  attr_reader :players, :header, :winner

  def initialize(player1, player2)
    @players = [player1, player2]
    @header = "#{player1.name} vs. #{player2.name}"
    @winner = nil
  end

  def attack(receiver)
    receiver.take_hit
    @players.reverse!
  end

  def link
    if end_game?
      game_over
      return "/game_over"
    end
      "/play"
  end

  private
  def end_game?
    players.each{ |player| return true if player.hitpoints <= 0}
    false
   end
   
   def game_over
    @winner = players.last
  end
end
