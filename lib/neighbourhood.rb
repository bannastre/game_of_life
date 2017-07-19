# It understands the space for cells to be placed
class Neighbourhood

  attr_reader :cells

  def initialize(x_axis, y_axis)
    @cells = Array.new(x_axis) { Array.new(y_axis, Cell.new) }
  end

  def switch_cell(x_axis, y_axis)
    @cells[x_axis][y_axis].switch
  end

  def cell_state(x_axis, y_axis)
    @cells[x_axis][y_axis].state
  end

  def age
    switch_cell(2,1) if cell_state(2,1) == :dead
  end

end
