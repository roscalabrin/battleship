require_relative 'computer_big_ship'
require_relative 'computer_small_ship'

class ComputerShips
  attr_reader :big_ship_coord
              :small_ship_coord

  def initialize
    @big_ship_coord
    @small_ship_coord
    place_computer_big_ship
  end

  def place_computer_big_ship
    big_ship = ComputerBigShip.new
    @big_ship_coord =  big_ship.big_ship_position
    place_computer_small_ship(@big_ship_coord)
    # p @big_ship_coord
  end

  def place_computer_small_ship(big_ship_coord)
    small_ship = ComputerSmallShip.new(big_ship_coord)
    @small_ship_coord =  small_ship.small_ship_position
    # p @small_ship_coord
  end


end
