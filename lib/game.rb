class Game

  def initialize
    player_ship_placement
  end

  def player_ship_placement
    p "I have laid out my ships on the grid."
    p "You now need to layout your two ships."
    p "The first is two units long and the second is three units long."
    p "The grid has A1 at the top left and D4 at the bottom right."
    p "Enter the squares for the two-unit ship:"
    player_input = gets.chomp.to_s.upcase
  end

end
