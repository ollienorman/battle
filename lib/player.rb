class Player

  attr_reader :name, :hp, :awake
  DEFAULT_HIT_POINTS = 100

  def initialize(name, hp = DEFAULT_HIT_POINTS)
    @name = name
    @hp = hp
    @awake = true
  end

  def reduce_hp
    @hp -= 10
    pass_out if hp <= 0
  end

  def pass_out
    @awake = false
  end

end
