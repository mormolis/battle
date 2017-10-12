class Player
  HITPOINTS = 60
  ATTACK_DAMAGE = 10
  attr_reader :name, :hitpoints

  def initialize(args)
    @name = args[:name]
    @hitpoints = HITPOINTS
  end

  def take_hit
    @hitpoints -= ATTACK_DAMAGE
  end
end
