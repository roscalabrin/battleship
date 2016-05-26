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

    rows << @row_A
    rows << @row_B
    rows << @row_C
    rows << @row_D

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
