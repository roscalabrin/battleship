require_relative 'game_grid'

class Game < GameGrid

  def initialize
    @player_small_ship
    @player_big_ship
    @small_ship
    @big_ship
    print_grid
  end

  def game_starts
    GameGrid.new.print_grid
  end

  def player_shot_sequence
    p "What position do you want to fire?"
    player_shot = gets.chomp.to_s.upcase
  end

  #compare 







end
