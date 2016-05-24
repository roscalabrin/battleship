class Battleship
    # attr_reader :player_input

    def initialize
        start_game_sequence
    end

    def start_game_sequence
        p 'Welcome to BATTLESHIP'
        p 'Would you like to (p)lay, read the (i)nstructions, or (q)uit?'
        player_input = gets.chomp.to_s.downcase
        start_game_sequence_input(player_input)
    end

    def start_game_sequence_input(player_input)
        p 'test'     if player_input == 'p' || player_input == 'play'
        instructions if player_input == 'i' || player_input == 'instructions'
        exit_game    if player_input == 'q' || player_input == 'quit'
    end

    def instructions
        p "The goal of this game is to be the first to sink all of your opponent's ships"
    end

    def exit_game
        p 'Goodbye!'
    end
end

Battleship.new
