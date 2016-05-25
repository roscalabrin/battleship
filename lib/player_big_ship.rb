require_relative 'game'

class PlayerBigShip
attr_reader :player_big_ship

  def initialize(player_small_ship, positions_available)
    @player_small_ship = player_small_ship
    @positions_available = positions_available
    player_big_ship_placement
  end

  def player_big_ship_placement
    p "Enter the squares for the three-unit ship:"
    player_input = gets.chomp.to_s.upcase.split
    # exit_game if player_input == 'Q' || player_input == 'QUIT'
    check_for_selection_errors(player_input)
  end

  def check_for_selection_errors(player_input)
    if @player_small_ship.include?(player_input[0]) == true
      overlap_error
    elsif @player_small_ship.include?(player_input[1]) == true
      overlap_error
    elsif @player_small_ship.include?(player_input[2]) == true
      overlap_error
    elsif player_input[0] == player_input[1] || player_input[0] == player_input[2] || player_input[1] == player_input[2]
      duplicate_positions
    else
      check_if_it_is_outside(player_input)
    end
  end

  def check_if_it_is_outside(player_input)
    if @positions_available.include?(player_input[0]) == false
      outside_board
    elsif @positions_available.include?(player_input[1]) == false
        outside_board
    elsif @positions_available.include?(player_input[2]) == false
        outside_board
    else
      validation_three_units_ship(player_input)
    end
  end

  def check_for_diagnonal_position(player_input) #revise
    if player_input[0][0] != player_input[1][0] && player_input[0][1] != player_input[1][1]
      diagnonal_error
    end
  end

  def validation_three_units_ship(player_input)#revise
    if player_input[0][0] == player_input[1][0] && player_input[1][0]== player_input[2][0]
      player_big_ship = player_input
      # Game.new
    elsif player_input[0][1] == player_input[1][1] && player_input[1][1] == player_input[2][1]
      player_big_ship = player_input
      # Game.new
    else
      check_for_diagnonal_position(player_input)
    end
  end

  def player_big_ship_placement
    p "Enter the squares for the three-unit ship:"
    player_input = gets.chomp.to_s.upcase.split
    # exit_game if player_input == 'Q' || player_input == 'QUIT'
    check_for_selection_errors(player_input)
  end

  def diagnonal_error
    p "Your ships need to be laid either horizontally or vertically."
    try_again
  end

  def overlap_error
    p "You can't overlap your ships."
    try_again
  end

  def outside_board
    p "You've placed your ship outside the board. Please try again."
    try_again
  end

  def duplicate_positions
    p "You need to select three different squares for your ship. Please try again."
    try_again
  end

  def try_again
    p "Enter the squares for the three-unit ship:"
    player_input = gets.chomp.to_s.upcase.split
    check_for_selection_errors(player_input)
  end

end
