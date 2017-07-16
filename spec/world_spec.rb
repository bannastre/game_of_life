require 'world'

describe World do
  subject(:world) { described_class.new }

  it 'knows a number of cells equal to the width multiplied by the height' do
    world = World.new(3, 3)
    expect(world.cells.length).to eq(3)
    expect(world.cells[0].length).to eq(3)
  end

end
