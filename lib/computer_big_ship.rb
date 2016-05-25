require_relative 'computer_small_ship'
# require_relative 'ship_placement'

class ComputerBigShip
  attr_reader :big_ship_position

  def initialize
    @cols = ["1", "2", "3", "4"]
    @rows = ["A", "B", "C", "D"]
    ship_alignment
  end

  def ship_alignment
    alignment_choice = ["horizontal", "vertical"]
    alignment = alignment_choice.sample
    if alignment == "horizontal"
      horizontal_ship
    else
      vertical_ship
    end
  end

  def horizontal_ship
    big_ship_row = @rows.sample
    available_col_options = ["1, 2, 3", "2, 3, 4"]
    big_ship_col = available_col_options.sample.split(",")
    big_ship_position = big_ship_col.map do |item|
      item << big_ship_row
      item.reverse.strip
    end
    big_ship_position.count
    place_small_ship(big_ship_position)
  end

  def vertical_ship
    big_ship_col = @cols.sample
    available_row_options = ["A, B, C", "B, C, D"]
    big_ship_row = available_row_options.sample.split(",")
    big_ship_position = big_ship_row.map do |item|
      item << big_ship_col
      item.strip
    end
    big_ship_position.count
    place_small_ship(big_ship_position)
  end

  def place_small_ship(big_ship_position)
    ComputerSmallShip.new(big_ship_position)
  end

end
