# This class creates a 7x7 undirected cyclic graph.
class GameBoard
  attr_accessor :board_squares

  def initialize
    @board_squares = []
    generate_board
  end

  def add_square(column, row)
    @board_squares << BoardSquare.new(column, row)
  end

  def generate_board
    7.times do |x|
      7.times do |y|
        add_square(x, y)
      end
    end
  end
# Need 'generate board' function

end