class Game

  attr_reader :player_1, :player_2, :player_1_turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @player_1_turn = true
  end

  def attack(player)
    change_turn
    player.reduce_hp
  end

  private

  def change_turn
    @player_1_turn = !@player_1_turn
  end

end
