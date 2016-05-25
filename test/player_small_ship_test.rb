require './test/test_helper'
require './lib/player_small_ship'

class PlayerSmallShipTest < MiniTest::Test

  def en
    binding.pry
    player_small_ship = PlayerShipPlacement.new


    assert player_small_ship


  end

end
