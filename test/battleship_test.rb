require './test/test_helper'
require './lib/battleship'

class BattleshipTest < MiniTest::Test

  def test_start_game_sequence 
    skip
    game = Battleship.new

    assert_equal possible_inputs.include?(player_input), player_input
  end

  def test_printing_instructions_to_screen
    game = Battleship.new
    game.instructions

    assert_equal "The goal of this game is to be the first to sink all of your opponent's ships.", game.instructions
  end

  def test_exiting_the_game
    game = Battleship.new
    game.exit_game

    assert_equal "Goodbye!", game.exit_game
  end

end
