# Class creates vertices for Gameboard
class BoardSquare
  attr_accessor :coordinates, :move_coordinates, :move_options

  def initialize(column, row)
    @coordinates = [column, row]
    @move_coordinates = []
    @move_options = []
    # @weights = []
    add_move_coordinates(column -2, row +1)
    add_move_coordinates(column -1, row +2)
    add_move_coordinates(column +1, row +2)
    add_move_coordinates(column +2, row +1)
    add_move_coordinates(column +2, row -1)
    add_move_coordinates(column +1, row -2)
    add_move_coordinates(column -1, row -2)
    add_move_coordinates(column -2, row -1)

  end

  def add_move_coordinates(x, y)
    if x >= 0 && y >= 0 && x <= 7 && y <= 7
      @move_coordinates << [x ,y]
    end
  end

  def add_move(move_option)
    @move_options << move_option
  end

end