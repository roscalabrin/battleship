require_relative 'player_big_ship'
require_relative 'player_small_ship'

class PlayerShips
  attr_reader :big_ship_coord,
              :small_ship_coord

  def initialize
    @big_ship_coord
    @small_ship_coord
    place_player_ships
  end

  def place_player_ships
    small_ship = PlayerSmallShip.new
    @small_ship_coord = small_ship.player_small_ship
    player_small_ship = small_ship.player_small_ship
    positions_available = small_ship.positions_available

    big_ship = PlayerBigShip.new(player_small_ship, positions_available)
    @big_ship_coord = big_ship.player_big_ship
    player_big_ship = big_ship.player_big_ship
  end

end
