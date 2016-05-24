require './test/test_helper'
require './lib/board'


class BoardTest < MiniTest::Test

  def test_that_board_has_16_positions
    board = Board.new

    assert board
  end



end
