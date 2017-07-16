# It understands the space for cells to be placed
class World

  attr_reader :cells

  def initialize(x_axis, y_axis)
    @cells = Array.new(x_axis) { Array.new(y_axis) }
  end


end
