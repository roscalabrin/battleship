require './test/test_helper'
require './lib/small_ship'

class SmallShipTest < MiniTest::Test

  def test_small_ship_is_created
    small_ship = SmallShip.new(["B2", "B3", "B4"])


    assert small_ship
  end

  def test_that_ships_do_not_overlap
    binding.pry
    small_ship = SmallShip.new(["B2", "B3", "B4"])

    refute ["B2", "B3", "B4"] == small_ship.small_ship_position
  end




end
