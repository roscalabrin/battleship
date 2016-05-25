require_relative 'game'

class PlayerShot

  def initialize(player_shot)
    @player_shot = player_shot
    compares_with_computer_small_ship
  end

  def compares_with_computer_small_ship
    b = game.computer_big_ship
    p b
  end

  def compares_with_computer_big_ship
  end

  def hit_message
  end

  def miss_message
  end

  def updated_board
  end

  # ComputerSequence

end
