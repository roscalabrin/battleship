require_relative 'game_grid'
require_relative 'computer_shot'

class PlayerShot
  attr_reader :next_shot

  def initialize(player_shot, computer_big_ship, computer_small_ship, player_big_ship, player_small_ship)
    @player_shot         = player_shot
    @computer_big_ship   = computer_big_ship
    @computer_small_ship = computer_small_ship
    @player_big_ship     = player_big_ship
    @player_small_ship   = player_small_ship
    @player_shots_counter = 0
    @player_shots_tracker = []
    @computer_shots_tracker = []
    @row_A = ['A', "-", "-", "-", "-"]
    @row_B = ['B', "-", "-", "-", "-"]
    @row_C = ['C', "-", "-", "-", "-"]
    @row_D = ['D', "-", "-", "-", "-"]
    @board = [["A1", "A2", "A3", "A4"],
              ["B1", "B2", "B3", "B4"],
              ["C1", "C2", "C3", "C4"],
              ["D1", "D2", "D3", "D4"]]
    valid_shot?
  end

  def valid_shot?
    invalid_shot if @player_shot.size != 2
    within_the_board?
  end

  def within_the_board?
    positions_available = @board.flatten
    if positions_available.include?(@player_shot) == false
      outside_board
    else
      hit_small_ship?
    end
  end

  def hit_small_ship?
    if @computer_small_ship.include?(@player_shot)
      ships_sunk?
    else
      hit_big_ship?
    end
  end

  def hit_big_ship?
    if @computer_big_ship.include?(@player_shot)
      ships_sunk?
    else
      miss_message
    end
  end

  def ships_sunk?
    if @computer_small_ship.empty? && @computer_big_ship.empty?
      p "Congrats! You've won Battleship!"
    elsif @computer_small_ship.empty?
      sunk_small_ship_message
    elsif @computer_big_ship.empty?
      sunk_big_ship_message
    else
      hit_message
    end
  end

  def hit_message
    p "You hit an enemy ship!"
    updated_board("H")
  end

  def sunk_small_ship_message
    p "You sunk your enemy's small ship!"
    updated_board("H")
  end

  def sunk_big_ship_message
    p "You sunk your enemy's big ship!"
    updated_board("H")
  end

  def miss_message
    p "You missed your enemy's ships."
    updated_board("M")
  end

  def outside_board
    p "You've placed your ship outside the board. Please try again."
    try_again
  end

  def invalid_shot
    p "Invalid shot. Please try again."
    try_again
  end

  def updated_board(miss_or_hit)
    if @player_shot[0] === "A"
      @row_A.delete_at(@player_shot[1].to_i)
      @row_A.insert(@player_shot[1].to_i, miss_or_hit)
    elsif @player_shot[0] === "B"
      @row_B.delete_at(@player_shot[1].to_i)
      @row_B.insert(@player_shot[1].to_i, miss_or_hit)
    elsif @player_shot[0] === "C"
      @row_C.delete_at(@player_shot[1].to_i)
      @row_C.insert(@player_shot[1].to_i, miss_or_hit)
    elsif @player_shot[0] === "D"
      @row_D.delete_at(@player_shot[1].to_i)
      @row_D.insert(@player_shot[1].to_i, miss_or_hit)
    end
    GameGrid.new(@row_A, @row_B, @row_C, @row_D, "Battleship - Computer's Board")
    computer_turn
  end

  def try_again #invalid shots
    p "What position do you want to fire?"
    player_shot = gets.chomp.to_s.upcase
  end

  def next_shot
    p "Testing"
    # player_shot = gets.chomp.to_s.upcase
  end

  def computer_turn
    @player_shots_counter += 1
    @player_shots_tracker << @player_shot
    computer_shot = ComputerShot.new(@computer_big_ship, @computer_small_ship, @player_big_ship, @player_small_ship)
  end


end
