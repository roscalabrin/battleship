require './test/test_helper'
require './lib/ship_placement'

class ShipPlacementTest < MiniTest::Test


  def test_coordinates_are_assign_to_ship1
    ship = ShipPlacement.new
    binding.pry
    
    ship.assign_ship1_unit1


    assert
  end

  def test_coordinates_are_assign_to_ship1
    skip
    ship = ShipPlacement.new

    assert_equal
  end

end
