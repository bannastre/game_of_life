class Board

  def initialize(x_axis, y_axis)
    @x_axis = x_axis
    @y_axis = y_axis
  end

  

  def change_state_of_cell(cell)
    cell.swtich
  end

end
