require_relative 'game_grid'
require_relative 'player_shot'

class ComputerShot
  attr_accessor :player_guesses

  def initialize(computer_big_ship, computer_small_ship, player_big_ship, player_small_ship)
    @computer_big_ship   = computer_big_ship
    @computer_small_ship = computer_small_ship
    @player_big_ship     = player_big_ship
    @player_small_ship   = player_small_ship
    @computer_shot
    @computer_shots_counter = 0
    @computer_shots_tracker = []
    @row_A = ['A', "-", "-", "-", "-"]
    @row_B = ['B', "-", "-", "-", "-"]
    @row_C = ['C', "-", "-", "-", "-"]
    @row_D = ['D', "-", "-", "-", "-"]
    @board = [["A1", "A2", "A3", "A4"],
              ["B1", "B2", "B3", "B4"],
              ["C1", "C2", "C3", "C4"],
              ["D1", "D2", "D3", "D4"]]
    generate_random_shot
  end

  def generate_random_shot
    positions_available = @board.flatten
    @computer_shot = positions_available.sample
    hit_small_ship?
  end

  def hit_small_ship?
    if @player_small_ship.include?(@computer_shot)
      ships_sunk?
    else
      hit_big_ship?
    end
  end

  def hit_big_ship?
    if @player_big_ship.include?(@computer_shot)
      ships_sunk?
    else
      computer_miss_message
    end
  end

  def ships_sunk?
    if @player_small_ship.empty? && @player_big_ship.empty?
      p "Sorry... you've lost Battleship!"
      play_again
    elsif @player_small_ship.empty?
      computer_sunk_small_ship_message
    elsif @player_big_ship.empty?
      computer_sunk_big_ship_message
    else
      computer_hit_message
    end
  end

  def computer_hit_message
    p "Your ship was hit!"
    updated_board("H")
  end

  def sunk_small_ship_message
    p "Your small ship was sunk by your enemy!"
    updated_board("H")
  end

  def computer_sunk_big_ship_message
    p "Your big ship was sunk by your enemy!"
    updated_board("H")
  end

  def computer_miss_message
    p "You enemy missed your ships."
    updated_board("M")
  end

  def updated_board(miss_or_hit)
    if @computer_shot[0] === "A"
      @row_A.delete_at(@computer_shot[1].to_i)
      @row_A.insert(@computer_shot[1].to_i, miss_or_hit)
    elsif @computer_shot[0] === "B"
      @row_B.delete_at(@computer_shot[1].to_i)
      @row_B.insert(@computer_shot[1].to_i, miss_or_hit)
    elsif @computer_shot[0] === "C"
      @row_C.delete_at(@computer_shot[1].to_i)
      @row_C.insert(@computer_shot[1].to_i, miss_or_hit)
    elsif @computer_shot[0] === "D"
      @row_D.delete_at(@computer_shot[1].to_i)
      @row_D.insert(@computer_shot[1].to_i, miss_or_hit)
    end
    GameGrid.new(@row_A, @row_B, @row_C, @row_D, "Battleship - Computer's Board")
  end



end
