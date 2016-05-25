require_relative 'computer_ships'
require_relative 'game_grid'

class Game < GameGrid

  def initialize
    @computer_big_ship
    @computer_small_ship
    game_starts
  end

  def game_starts
    computer_ships = ComputerShips.new
    @computer_small_ship = computer_ships.small_ship_coord
    @computer_big_ship = computer_ships.big_ship_coord
    p computer_ships

    p @computer_big_ship
    p @computer_small_ship
  end

    # p "test"
    # p "Computer big ship #{@computer_big_ship.big_ship}"
    # p "Computer small ship #{@computer_small_ship.small_ship}"
    # # p "Computer small ship #{@computer_big_ship.small_ship_position}"
    # # p "Computer small ship #{@computer_small_ship.position}"
    # # GameGrid.new.print_grid
  end

  # def player_shot_sequence
  #   p "What position do you want to fire?"
  #   player_shot = gets.chomp.to_s.upcase
  #   analyze_results
  # end
  #
  # def analyze_results
  #   p "test"
  # end
