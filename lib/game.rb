class Game
  attr_reader :player_one, :player_two, :turn

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @turn = 0
  end

  def attack(player)
    player.receive_damage
  end

  def advance_turn
    @turn += 1
  end

  def current_player
    (@turn % 2).zero? ? @player_one : @player_two
  end

  def other_player
    current_player == @player_one ? @player_two : @player_one
  end
end