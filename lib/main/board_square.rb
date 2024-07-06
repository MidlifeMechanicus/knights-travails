# Class for creating nodes on a gameboard as knight (playing piece) moves through them.
class BoardSquare
  attr_accessor :coordinates, :previous_square, :next_squares

  @@history = []

  def initialize(coord_array, previous = nil)
    @coordinates = coord_array
    @previous_square = previous
    @next_squares = []
    @@history << @coordinates

    add_move([coord_array[0] - 2, coord_array[1] + 1])
    add_move([coord_array[0] - 1, coord_array[1] + 2])
    add_move([coord_array[0] + 1, coord_array[1] + 2])
    add_move([coord_array[0] + 2, coord_array[1] + 1])
    add_move([coord_array[0] + 2, coord_array[1] - 1])
    add_move([coord_array[0] + 1, coord_array[1] - 2])
    add_move([coord_array[0] - 1, coord_array[1] - 2])
    add_move([coord_array[0] - 2, coord_array[1] - 1])

    # This could have been done more elegantly with an array and #map. But it works.
  end

  def add_move(move)
    return unless (0..7).include?(move[0]) && (0..7).include?(move[1])
    return if @@history.include?(move)

    @next_squares << move
  end

  def display_previous
    previous = []
    current_square = self
    until current_square.nil?
      previous << current_square.coordinates
      current_square = current_square.previous_square
    end
    p previous.reverse
  end

  def reset
    @@history = []
  end
end
