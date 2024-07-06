# See Project notes in README for more information about this approach.
require_relative "main/board_square"

def knight_moves(start, finish)
  queue = []
  current_square = BoardSquare.new(start)

  until current_square.coordinates == finish
    current_square.next_squares.each do |square|
      queue << BoardSquare.new(square, current_square)
    end
    current_square = queue.shift
  end
  current_square.display_previous
  current_square.reset
end

knight_moves([0, 0], [3, 3])
knight_moves([3, 3], [0, 0])
knight_moves([0, 0], [7, 7])
knight_moves([3, 3], [4, 3])
