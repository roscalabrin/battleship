require './test/test_helper'
require './lib/player_shot'

class PlayerShotTest < MiniTest::Test

  def test_that_guess_is_inside_the_board
    player_shot = PlayerShot.new("A8", ["A1", "A2", "A3"], ["B3", "B4"], ["D2", "D3", "D4"], ["B3", "B4"])

    assert_equal "You've placed your ship outside the board. Please try again.", player_shot.valid_shot?
  end

  def test_that_guess_hits_big_ship
    player_shot = PlayerShot.new("A1", ["A1", "A2", "A3"], ["B3", "B4"], ["D2", "D3", "D4"], ["B3", "B4"])

    assert_equal "You hit an enemy ship!", player_shot.valid_shot?
  end

  def test_that_guess_hits_small_ship
    binding.pry
    player_shot = PlayerShot.new("B4", ["A1", "A2", "A3"], ["B3", "B4"], ["D2", "D3", "D4"], ["B3", "B4"])

    assert_equal "You hit an enemy ship!", player_shot.valid_shot?
  end


end
