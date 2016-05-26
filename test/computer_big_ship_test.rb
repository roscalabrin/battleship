require './test/test_helper'
require './lib/computer_big_ship'

class ComputerBigShipTest < MiniTest::Test

  def test_big_ship_is_created
    big_ship = ComputerBigShip.new

    assert big_ship
  end

  def test_vertical_big_ship_is_placed_on_the_board
    big_ship = ComputerBigShip.new
    big_ship.ship_alignment

    assert 3, big_ship.vertical_ship
  end

  def test_horizontal_big_ship_is_placed_on_the_board
    big_ship = ComputerBigShip.new
    big_ship.ship_alignment

    assert 3, big_ship.horizontal_ship
  end

end
