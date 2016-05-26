require './test/test_helper'
require './lib/player_small_ship'

class PlayerSmallShipTest < MiniTest::Test

  def test_that_player_gets_error_if_ship_is_outside
    player_small_ship = PlayerSmallShip.new.player_small_ship_placement
    player_input = "A2 A8"

    assert_equal "You've placed your ship outside the board. Please try again.", player_small_ship.player_input_valid?("A2 A8")
  end

  def test_that_ship_units_are_sequential
    player_small_ship = PlayerSmallShip.new
    binding.pry
    player_input = "A2 A3"

    assert_equal "Your coordinates need to be sequential. Please try again.", player_small_ship.player_input_valid?("A2 A3")
  end

  def test_that_ship_positions_are_not_duplicates
    player_small_ship = PlayerSmallShip.new
    player_input = "B3 B3"

    assert_equal "You need to select two different squares for your ship. Please try again.", player_small_ship.player_input_valid?("B3 B3")
  end

end
