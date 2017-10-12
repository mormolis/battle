class Player
  HITPOINTS = 60
  attr_reader :name, :hitpoints

  def initialize (args)
    @name = args[:name]
    @hitpoints = HITPOINTS
  end

end