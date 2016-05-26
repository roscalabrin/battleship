require 'terminal-table'

class GameGrid

  def initialize(row_A,row_B, row_C, row_D, title)
    @row_A = row_A
    @row_B = row_B
    @row_C = row_C
    @row_D = row_D
    @title = title
    print_grid
  end

  def print_grid
    rows = []
    rows << @row_A
    rows << @row_B
    rows << @row_C
    rows << @row_D

    table = Terminal::Table.new :title => "#{@title}", :headings => [' ', '1', '2', '3', '4'], :rows => rows
    puts table
  end

end

# table = Terminal::Table.new :title => "Battleship", :headings => [' ', '1', '2', '3', '4'], :rows => rows
# puts table
