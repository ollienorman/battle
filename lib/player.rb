class Player

  attr_reader :name, :hp
  DEFAULT_HIT_POINTS = 100

  def initialize(name, hp = DEFAULT_HIT_POINTS)
    @name = name
    @hp = hp
  end

  def reduce_hp
    @hp -= 10
  end

  def attack(player)
    player.reduce_hp
  end

end