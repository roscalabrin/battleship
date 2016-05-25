class ShipPlacement


  def board
    @board = [["A1", "A2", "A3", "A4"],
              ["B1", "B2", "B3", "B4"],
              ["C1", "C2", "C3", "C4"],
              ["D1", "D2", "D3", "D4"]]
  end

    assign_ship1_unit1
  end

  def assign_ship1_unit1
    positions_available = @board.flatten
    ship1_unit1 = positions_available.shuffle.sample
    assign_ship1_unit2(ship1_unit1)
  end

  def assign_ship1_unit2(ship1_unit1)
    unchanged_axis = ["col", "row"].sample
    assign_ship1_unit2_row(ship1_unit1) if unchanged_axis == "col"
    assign_ship1_unit2_col(ship1_unit1) if unchanged_axis == "row"
  end

  def assign_ship1_unit2_row(ship1_unit1)
    ship1_unit2_col = ship1_unit1[1]
    if ship1_unit1[0] == @rows[0]
      ship1_unit2_row = @rows[1]
    elsif ship1_unit1[0] == @rows[-1]
      ship1_unit2_row = @rows[-2]
    else
    index = @rows.index(ship1_unit1[0])
    possible_rows = [-1, 1]
    ship1_unit2_row = @rows[index + possible_rows.sample]
    end
    ship1_unit1_coordinates(ship1_unit1, ship1_unit2_row, ship1_unit2_col)
  end

  def assign_ship1_unit2_col(ship1_unit1)
    ship1_unit2_row = ship1_unit1[0]
    if ship1_unit1[0] == @cols[0]
      ship1_unit2_col = @cols[1]
    elsif ship1_unit1[0] == @cols[-1]
      ship1_unit2_col = @cols[-2]
    else
    index = @cols.index(ship1_unit1[1])
    possible_rows = [-1, 1]
    ship1_unit2_col = @cols[index + possible_rows.sample]
    end
    ship1_unit1_coordinates(ship1_unit1, ship1_unit2_row, ship1_unit2_col)
  end

  def ship1_unit1_coordinates(ship1_unit1, ship1_unit2_row, ship1_unit2_col)
    ship1_unit2 = Array.new << ship1_unit2_row
    ship1_unit2 << ship1_unit2_col
    ship1_unit2 = ship1_unit2.join
    ship1_coord = Array.new << ship1_unit1 << ship1_unit2
  end

  def count
  end


end
