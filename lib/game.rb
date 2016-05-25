require_relative 'computer_ships'
require_relative 'player_ships'
require_relative 'game_grid'

class Game < GameGrid
  attr_reader :computer_big_ship,
              :computer_small_ship

  def initialize
    # @player_big_ship
    # @player_small_ship
    computer_ship_placement
  end

  def computer_ship_placement
    computer_ships = ComputerShips.new
    computer_big_ship = computer_ships.big_ship_coord
    computer_small_ship = computer_ships.small_ship_coord
    player_ship_placement
  end

  def player_ship_placement
    player_ships = PlayerShips.new
    player_big_ship = player_ships.big_ship_coord
    player_small_ship = player_ships.small_ship_coord
    player_first_shot_sequence
  end

  def player_first_shot_sequence
    GameGrid.new.print_grid
    p "What position do you want to fire?"
    player_shot = gets.chomp.to_s.upcase
    # analyze_results #create a class
  end

end
  # def analyze_results
  #   p "test"
  # end
