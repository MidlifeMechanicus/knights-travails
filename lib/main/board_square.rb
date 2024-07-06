# Class creates vertices for Gameboard
class BoardSquare
  attr_accessor :coordinates, :previous_square, :next_squares

  @@history = []

  def initialize(coord_array, previous = nil)
    @coordinates = coord_array
    @previous_square = previous
    @next_squares = []
    @@history << @coordinates

    add_move([coord_array[0] -2, coord_array[1] +1])
    add_move([coord_array[0] -1, coord_array[1] +2])
    add_move([coord_array[0] +1, coord_array[1] +2])
    add_move([coord_array[0] +2, coord_array[1] +1])
    add_move([coord_array[0] +2, coord_array[1] -1])
    add_move([coord_array[0] +1, coord_array[1] -2])
    add_move([coord_array[0] -1, coord_array[1] -2])
    add_move([coord_array[0] -2, coord_array[1] -1])

  end

  def add_move(move)
    if move[0] >= 0 && move[1] >= 0 && move[0] <= 7 && move[1] <= 7
      unless @@history.include?(move)
        @next_squares << move
      end
    end
  end

  def display_previous
    previous = []
    current_square = self
    until current_square.nil?
      previous << current_square.coordinates
      current_square = current_square.previous_square
    end
    p previous.reverse()
  end

  def reset
    @@history = []
  end

end