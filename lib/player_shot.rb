require_relative 'game'

class PlayerShot

  def initialize(player_shot, computer_big_ship, computer_small_ship, player_big_ship, player_small_ship)
    @player_shot         = player_shot
    @computer_big_ship   = computer_big_ship
    @computer_small_ship = computer_small_ship
    @player_big_ship     = player_big_ship
    @player_small_ship   = player_small_ship
    compares_with_computer_small_ship
  end

  def compares_with_computer_small_ship
    check_small_ship if @computer_small_ship.include?(@player_shot)
    compares_with_computer_big_ship
  end

  def check_small_ship
    @computer_small_ship.delete(@player_input)
    if @computer_small_ship.empty?
      sunk_small_ship_message
    else
      hit_message
    end
  end

  def compares_with_computer_big_ship
    check_big_ship if @computer_big_ship.include?(@player_shot)
    miss_message
  end

  def check_big_ship
    @computer_big_ship.delete(@player_input)
    if @computer_big_ship.empty?
      sunk_big_ship_message
    else
      hit_message
    end
  end

  def hit_message
    p "You hit an enemy ship!"
  end

  def sunk_small_ship_message
    p "You sunk your enemy's small ship!"
  end

  def sunk_big_ship_message
    p "You sunk your enemy's big ship!"
  end

  def miss_message
    p "You missed your enemy's ships."
  end

  def updated_board
  end

  # ComputerSequence

end
