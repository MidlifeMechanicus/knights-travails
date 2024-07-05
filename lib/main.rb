require_relative "main/game_board"
require_relative "main/board_square"

# Need a 7x7 board (graph)
# each square has a location and links to 8 other squares (some of which may be nil)
# Need function that chooses a vertex and then determins shortest distance to a second vertex

test_board = GameBoard.new

p test_board