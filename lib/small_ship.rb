require_relative 'game'

class SmallShip
  attr_reader :small_ship_position

  def initialize(big_ship_position)
    @big_ship_position = big_ship_position
    @cols              = ["1", "2", "3", "4"]
    @rows              = ["A", "B", "C", "D"]
    @board             = [["A1", "A2", "A3", "A4"],
                          ["B1", "B2", "B3", "B4"],
                          ["C1", "C2", "C3", "C4"],
                          ["D1", "D2", "D3", "D4"]]
    assign_small_ship_unit1
  end

  def assign_small_ship_unit1
    positions_available = @board.flatten
    positions_available.delete(@big_ship_position[0])
    positions_available.delete(@big_ship_position[1])
    positions_available.delete(@big_ship_position[2])
    small_ship_unit1 = positions_available.sample
    assign_small_ship_unit2(small_ship_unit1)
  end

  def assign_small_ship_unit2(small_ship_unit1)
    unchanged_axis = ["col", "row"].sample
    assign_small_ship_unit2_row(small_ship_unit1)  if unchanged_axis == "col"
    assign_small_ship_unit2_col(small_ship_unit1) if unchanged_axis == "row"
  end

  def assign_small_ship_unit2_row(small_ship_unit1)
    small_ship_unit2_col = small_ship_unit1[1]
    if small_ship_unit1[0] == @rows[0]
      small_ship_unit2_row = @rows[1]
    elsif small_ship_unit1[0] == @rows[-1]
      small_ship_unit2_row = @rows[-2]
    else
    index = @rows.index(small_ship_unit1[0])
    possible_rows = [-1, 1]
    small_ship_unit2_row = @rows[index + possible_rows.sample]
    end
    combine_small_ship_units(small_ship_unit1, small_ship_unit2_row, small_ship_unit2_col)
  end

  def assign_small_ship_unit2_col(small_ship_unit1)
    small_ship_unit2_row = small_ship_unit1[0]
    if small_ship_unit1[1] == @cols[0]
      small_ship_unit2_col = @cols[1]
    elsif small_ship_unit1[1] == @cols[-1]
      small_ship_unit2_col = @cols[-2]
    else
    index = @cols.index(small_ship_unit1[1])
    possible_rows = [-1, 1]
    small_ship_unit2_col = @cols[index + possible_rows.sample]
    end
    combine_small_ship_units(small_ship_unit1, small_ship_unit2_row, small_ship_unit2_col)
  end

  def combine_small_ship_units(small_ship_unit1, small_ship_unit2_row, small_ship_unit2_col)
    small_ship_unit2 = Array.new << small_ship_unit2_row
    small_ship_unit2  << small_ship_unit2_col
    small_ship_unit2 = small_ship_unit2.join
    small_ship_position = Array.new << small_ship_unit1 << small_ship_unit2
    validate_ship_positions(small_ship_position)
  end

  def validate_ship_positions(small_ship_position) #no repeats
    if @big_ship_position.include?(small_ship_position[0]) || @big_ship_position.include?(small_ship_position[1]) == true
      small_ship_position[1]
      assign_small_ship_unit1
    else
      # p small_ship_position
      # p @big_ship_position
      Game.new
    end
  end


end
