# It has responsibility for living and dying
class Cell
  def initialize(state=0)
    @state = state
  end

  def switch
    @state == 0 ? @state = 1 : @state = 0
  end
end
