require './test/test_helper'
require './lib/computer_small_ship'

class ComputerSmallShipTest < MiniTest::Test

  def test_small_ship_is_created
    computer_ship = ComputerSmallShip.new(["B2", "B3", "B4"])

    assert computer_ship
  end

  def test_that_ships_do_not_overlap
    computer_ship = ComputerSmallShip.new(["B2", "B3", "B4"])
    computer_ship.small_ship_position

    refute ["B2", "B3", "B4"] == computer_ship.small_ship_position
  end

  def test_both_small_and_big_ships_were_placed_on_the_board
    computer_ship = ComputerSmallShip.new(["B2", "B3", "B4"])
    computer_ship.validate_ship_unit2("C1", "C2")

    assert 5, computer_ship.validate_ship_unit2("C1", "C2")
  end



end
