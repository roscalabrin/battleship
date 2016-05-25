require_relative 'player_big_ship'

class PlayerSmallShip
attr_reader   :player_small_ship,
              :positions_available

  def initialize
    @player_small_ship
    @positions_available
    @board             = [["A1", "A2", "A3", "A4"],
                          ["B1", "B2", "B3", "B4"],
                          ["C1", "C2", "C3", "C4"],
                          ["D1", "D2", "D3", "D4"]]
    player_small_ship_placement
  end

  def player_small_ship_placement
    @positions_available = @board.flatten
    p "I have laid out my ships on the grid."
    p "You now need to layout your two ships."
    p "The first is two units long and the second is three units long."
    p "The grid has A1 at the top left and D4 at the bottom right."
    p "Enter the squares for the two-unit ship:"
    player_input = gets.chomp.to_s.upcase.split
    # exit_game if player_input == 'Q' || player_input == 'QUIT'
    check_for_selection_errors(player_input)
  end

  def validate_player_input

  end

  def check_for_selection_errors(player_input)
    @positions_available = @board.flatten
      if @positions_available.include?(player_input[0]) == false
       outside_board
     elsif @positions_available.include?(player_input[1]) == false
       outside_board
      elsif player_input[0] == player_input[1]
       duplicate_positions
      else
      return true
      validation_two_units_ship(player_input)
    end
  end

  def check_for_selection_errors(player_input)
    @positions_available = @board.flatten
      if @positions_available.include?(player_input[0]) == false
       outside_board
     elsif @positions_available.include?(player_input[1]) == false
       outside_board
      elsif player_input[0] == player_input[1]
       duplicate_positions
      else
      validation_two_units_ship(player_input)
    end
  end

  def check_for_diagnonal_position(player_input)
    if player_input[0][0] != player_input[1][0] && player_input[0][1] != player_input[1][1]
      diagnonal_error
    end
  end

  def validation_two_units_ship(player_input)
    if player_input[0][0] == player_input[1][0] || player_input[0][1] ==      player_input[1][1]
      @player_small_ship = player_input
      @positions_available = @board.flatten
      @positions_available.delete(player_input[0])
      @positions_available.delete(player_input[1])
    else
      check_for_diagnonal_position(player_input)
    end
  end

  def diagnonal_error
    p "Your ships need to be laid either horizontally or vertically."
    # try_again
  end

  def outside_board
    p "You've placed your ship outside the board. Please try again."
    # try_again
  end

  def duplicate_positions
    p "You need to select two different squares for your ship. Please try again."
    # try_again
  end

  def try_again
    p "Enter the squares for the two-unit ship:"
    player_input = gets.chomp.to_s.upcase.split
    check_for_selection_errors(player_input)
  end

end
