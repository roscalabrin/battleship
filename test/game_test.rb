require './test/test_helper'
require './lib/game'

class GameTest < MiniTest::Test

  def test_game_is_created
    game = Game.new

    assert game
  end
end
