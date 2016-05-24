require './test/test_helper'
require './lib/ship_placement'

class ShipPlacementTest < MiniTest::Test


  def test_ship1_unit1_is_created
    ship = ShipPlacement.new

    assert_equal "", ship.assign_ship_first_position
  end

  def test_ship1_unit2_is_created
    skip
    ship = ShipPlacement.new

    assert_equal "", ship.assign_ship_first_position
  end

end
