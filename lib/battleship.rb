require_relative 'big_ship'

class Battleship

  def initialize
    start_game_sequence
  end

  def start_game_sequence
      p 'Welcome to BATTLESHIP'
      p 'Would you like to (p)lay, read the (i)nstructions, or (q)uit?'
      player_input = gets.chomp.to_s.downcase
      start_game_sequence_input(player_input)
  end

  def prompt_after_instructions
      p 'Would you like to (p)lay or (q)uit?'
      player_input = gets.chomp.to_s.downcase
      start_game_sequence_input(player_input)
  end

  def start_game_sequence_input(player_input)
      BigShip.new  if player_input == 'p' || player_input == 'play'
      instructions if player_input == 'i' || player_input == 'instructions'
      exit_game    if player_input == 'q' || player_input == 'quit'
  end

  def instructions
      p "The goal of this game is to be the first to sink all of your opponent's ships."
      prompt_after_instructions
  end

  def exit_game
      p 'Goodbye!'
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

# start_game_sequence
Battleship.new
