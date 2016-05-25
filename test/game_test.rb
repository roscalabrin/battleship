require './test/test_helper'
require './lib/game'

class GameTest < MiniTest::Test

  def test_game_is_created
    game = Game.new

    assert game
  end

  def test_computer_big_ship_has_three_elements
    game = Game.new
    computer_ships = ComputerShips.new
    computer_big_ship.count

    assert_equal 3, computer_big_ship.count
  end


end
