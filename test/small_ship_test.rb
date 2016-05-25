require './test/test_helper'
require './lib/small_ship'

class SmallShipTest < MiniTest::Test

  def test_small_ship_is_created
    binding.pry
    small_ship = SmallShip.new(["B2", "B3", "B4"])


    assert small_ship
  end

  # def test_vertical_big_ship_is_placed_on_the_board
  #   big_ship = BigShip.new
  #   binding.pry
  #   big_ship.ship_alignment
  #
  #   assert 3, big_ship.vertical_ship
  # end
  #
  # def test_horizontal_big_ship_is_placed_on_the_board
  #   big_ship = BigShip.new
  #   big_ship.ship_alignment
  #
  #   assert 3, big_ship.horizontal_ship
  # end


end
