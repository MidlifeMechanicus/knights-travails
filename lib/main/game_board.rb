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
    8.times do |x|
      8.times do |y|
        add_square(x, y)
      end
    end
  end

  def generate_move_options
    @board_squares.each do |square|
      @board_squares.each do |potential_move|
        if square.move_coordinates.any? { |n| n == potential_move.coordinates}
          square.move_options << potential_move
        end
      end
    end
  end
end