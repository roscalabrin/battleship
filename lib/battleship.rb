require_relative 'game'

class Battleship

  def initialize
    start_game_sequence
  end

  def start_game_sequence
    p 'Welcome to BATTLESHIP'
    p 'Would you like to (p)lay, read the (i)nstructions, or (q)uit?'
    player_input = gets.chomp.to_s.upcase
    start_game_sequence_input(player_input)
  end

  def prompt_after_instructions
    p 'Would you like to (p)lay or (q)uit?'
    player_input = gets.chomp.to_s.upcase
    start_game_sequence_input(player_input)
  end

  def start_game_sequence_input(player_input)
    if player_input == 'P' || player_input == 'PLAY'
      Game.new
    elsif player_input == 'I' || player_input == 'INSTRUCTIONS'
      instructions
    elsif player_input == 'Q' || player_input == 'QUIT'
      exit_game
    else
      invalid_choice
    end
  end

  def instructions
    p "The goal of this game is to be the first to sink all of your opponent's ships."
    prompt_after_instructions
  end

  def invalid_choice
    p "Invalid choice."
    prompt_after_instructions
  end

  def exit_game
    p 'Goodbye!'
  end

end

if __FILE__ == $0
  Battleship.new
end
#
# Battleship.new
