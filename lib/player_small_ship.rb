
class PlayerSmallShip
attr_reader   :player_small_ship,
              :positions_available

  def initialize
    @positions_available
    @board = [["A1", "A2", "A3", "A4"],
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
    player_input = gets.chomp.to_s
    exit_game if player_input == 'q' || player_input == 'quit'
    player_input = player_input.to_s.upcase.split
    player_input_valid?(player_input)
  end

  def player_input_valid?(player_input)
    if (inside_the_board?(player_input) == true) && (not_duplicated?(player_input) == true) && (sequential_numbers?(player_input) == true) && (sequential_letters?(player_input) == true)
    validate_two_units_ship(player_input)
    else
      try_again
    end
  end

  def inside_the_board?(player_input)
    @positions_available = @board.flatten
    if @positions_available.include?(player_input[0]) == false
      outside_board
    elsif @positions_available.include?(player_input[1]) == false
      outside_board
    else
      true
    end
  end

  def not_duplicated?(player_input)
    if player_input[0] == player_input[1]
     duplicate_positions
    else
     true
    end
  end

  def sequential_letters?(player_input)
    if player_input[0][0] == "A" && (player_input[1][0] == "A" || player_input[1][0] == "B")
      true
    elsif player_input[0][0] == "B" && (player_input[1][0] == "A" || player_input[1][0] == "B" || player_input[1][1] == "C")
      true
    elsif player_input[0][0] == "C" && (player_input[1][0] == "B" || player_input[1][0] == "C" || player_input[1][1] == "D")
      true
    elsif player_input[0][0] == "D" && (player_input[1][0] == "C" || player_input[1][0] == "D")
    else
      sequential_error
    end
  end

  def sequential_numbers?(player_input)
    if player_input[0][1] == "1" && (player_input[1][1] == "1" || player_input[1][1] == "2")
      true
    elsif player_input[0][1] == "2" && (player_input[1][1] == "1" || player_input[1][1] == "2" || player_input[1][1] == "3")
      true
    elsif player_input[0][1] == "3" && (player_input[1][1] == "2" || player_input[1][1] == "3" || player_input[1][1] == "4")
      true
    elsif player_input[0][1] == "4" && (player_input[1][1] == "3" || player_input[1][1] == "4")
    else
      sequential_error
    end
  end

  def validate_two_units_ship(player_input)
    @player_small_ship = player_input
    @positions_available = @board.flatten
    @positions_available.delete(player_input[0])
    @positions_available.delete(player_input[1])
  end

  def diagonal_error
    p "Your ships need to be laid either horizontally or vertically.Please try again."
  end

  def outside_board
    p "You've placed your ship outside the board. Please try again."
  end

  def duplicate_positions
    p "You need to select two different squares for your ship. Please try again."
  end

  def sequential_error
    p "Your coordinates need to be sequential. Please try again."
  end

  def exit_game
    p 'Goodbye!'
  end

  def try_again
    p "Enter the squares for the two-unit ship:"
    player_input = gets.chomp.to_s.upcase.split
    player_input_valid?(player_input)
  end

end
