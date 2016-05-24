require './test/test_helper'
require './lib/battleship'

class BattleshipTest < MiniTest::Test

  # def test_start_game_sequence #initial screen
  #   skip
  #   game = Battleship.new
  #
  #   assert_equal "Welcome to BATTLESHIP"
  # end

  def test_exit_the_game
    game = Battleship.new
    game.exit_game

    assert_equal "Goodbye!", game.exit_game
  end

end
