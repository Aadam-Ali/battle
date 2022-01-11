class Player
  attr_reader :name

  DEFAULT_HP = 100

  def initialize(name)
    @name = name
  end

  def hp
    DEFAULT_HP
  end
end