class Player

attr_reader :name, :hp_value

  def initialize(name, hp_value = 60)
    @name = name
    @hp_value = hp_value
  end

  def attacked
    @hp_value -= 10
  end

end
