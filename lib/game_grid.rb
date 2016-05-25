require 'terminal-table'

class GameGrid

  def initialize(row_A = ['A', "-", "-", "-", "-"],
                row_B = ['B', "-", "-", "-", "-"],
                row_C = ['C', "-", "-", "-", "-"],
                row_D = ['D', "-", "-", "-", "-"])
    @row_A = row_A
    @row_B = row_B
    @row_C = row_C
    @row_D = row_D
  end

  def print_grid
    rows = []

    # row1 = ['A', "-", "-", "-", "-"]
    # row2 = ['B', "-", "-", "-", "-"]
    # row3 = ['C', "-", "-", "-", "-"]
    # row4 = ['D', "-", "-", "-", "-"]
    #
    # rows << row1
    # rows << row2
    # rows << row3
    # rows << row4
    #
    rows << ['A', "-", "-", "-", "-"]
    rows << ['B', "-", "-", "-", "-"]
    rows << ['C', "-", "-", "-", "-"]
    rows << ['D', "-", "-", "-", "-"]

    table = Terminal::Table.new :title => "Battleship", :headings => [' ', '1', '2', '3', '4'], :rows => rows
    puts table
  end

end
# #
# # def print_board
#   board = Array.new(4) { Array.new("-")}
#
#   board.each do |r|
#     puts r.map { |p| p }.join("  ")
#   end
#
#
#
# board = [["A1", "A2", "A3", "A4"],
#           ["B1", "B2", "B3", "B4"],
#           ["C1", "C2", "C3", "C4"],
#           ["D1", "D2", "D3", "D4"]]
#
#           board.index("D2")
#
