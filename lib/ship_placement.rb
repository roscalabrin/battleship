class ShipPlacement

  attr_reader :cols
              :rows
              :board

  def initialize
    @cols = ["1", "2", "3", "4"]
    @rows = ["A", "B", "C", "D"]
    @board = [["A1", "A2", "A3", "A4"],
              ["B1", "B2", "B3", "B4"],
              ["C1", "C2", "C3", "C4"],
              ["D1", "D2", "D3", "D4"]]
  end

end

# board.each do |r|
#   puts r.map { |p| " " }.join(" ")
# end
