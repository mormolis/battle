class Player
  HITPOINTS = 60
  ATTACK_DAMAGE = 10
  attr_reader :name, :hitpoints

  def initialize(name)
    @name = name
    @hitpoints = HITPOINTS
  end

  def take_hit
    @hitpoints -= ATTACK_DAMAGE * 100
  end
end
