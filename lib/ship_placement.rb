class ShipPlacement


  def assign_ship_first_position
    cols = [1, 2, 3, 4]
    rows = ["A", "B", "C", "D"]
    ship1_unit1_col = rand(1..4).to_s
    ship1_unit1_row = rows.sample
    ship1_unit1 = ship1_unit1_col.prepend(rows.sample)
    p ship1_unit1
    assign_ship_second_position
  end

  def assign_ship_second_position
    b = ["col", "row"]
    c = b.sample
    assign_ship_second_row if c == "col"
    assign_ship_second_col if c == "row"
  end

  def assign_ship_second_row
    ship1_unit2_col = ship1_unit1[1]
    # #row can be -1 or +1 of current row
    # #if row is current row is A then it can only be +1
    # #if row is current row is D then it can only be -1
    if ship1_unit1[0] == "A" :  ship1_unit2_row = "B"
    if ship1_unit1[0] == "D" :  ship1_unit2_row = "B"
    else value could be +1 or -1
  end

  def assign_ship_second_col
    ship1_unit2_row = ship1_unit1[0]
  end

# col = [1, 2, 3, 4]
# rows = ["A", "B", "C", "D"]
# positions_taken #array with occupied positions
#
# # ship1 is an array with two elements
# ship1_unit1 = rand(1..4).to_s
# ship1_unit1.prepend(rows.sample)
#

#

#
# #row can be -1 or +1 of current row
# #if row is current row is A then it can only be +1
# #if row is current row is D then it can only be -1
#
#
#
#
#
# #generate 2 units long ship
# # ship2 is an array with 3 elements


end
