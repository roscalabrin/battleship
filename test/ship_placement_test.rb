require './test/test_helper'
require './lib/ship_placement'

class ShipPlacementTest < MiniTest::Test

  def test_coordinates_are_assign_to_ship1
    ship = ShipPlacement.new
    binding.pry

    ship.ship1_coord

    assert ship.ship1_coord.empty?
  end

  def test_coordinates_are_assign_to_ship1
    skip
    ship = ShipPlacement.new

    ship.ship1_coord
    ship.ship1_coord.size

    assert_equal 2, ship.ship1_coord.size
  end


end
