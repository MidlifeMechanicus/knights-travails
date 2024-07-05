# Class creates vertices for Gameboard
class BoardSquare
  attr_accessor :coordinates, :move_options

  def initialize(column, row)
    @coordinates = [column, row]
    @move_options = []
    # @weights = []
  end

  def add_move(move_option)
    @move_options << move_option
  end

end