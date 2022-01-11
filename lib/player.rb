class Player
  attr_reader :name, :hp

  DEFAULT_HP = 100

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def receive_damage
    @hp -= 10
  end

  def attack(player)
    player.receive_damage
  end
end