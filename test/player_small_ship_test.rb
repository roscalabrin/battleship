require './test/test_helper'
require './lib/player_small_ship'

class PlayerSmallShipTest < MiniTest::Test

  def test_that_player_gets_error_if_ship_is_outside
    player_small_ship = PlayerSmallShip.new
    player_input = "A2 A8"

    assert_equal "You've placed your ship outside the board. Please try again.", player_small_ship.check_for_selection_errors("A2 A8")
  end

  def test_that_ship_units_are_sequential

  end

  def test_that_ship_is_placed_horizontally

  end

  def test_that_ship_is_placed_vertically

  end

  def test_that_ship_is_placed_vertically

  end



end
