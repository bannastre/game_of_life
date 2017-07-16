# It understands switching between dead and alive
class Cell
  attr_reader :state

  def initialize(state = :dead)
    @state = state
  end

  def switch
    @state == :dead ? @state = :alive : @state = :dead
  end
end
