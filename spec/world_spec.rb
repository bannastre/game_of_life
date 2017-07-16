require 'world'

describe World do
  subject(:world) { described_class.new(3, 3) }

  it 'knows a number of cells equal to the width multiplied by the height' do
    expect(world.cells.length).to eq(3)
    expect(world.cells[0].length).to eq(3)
  end

  it 'can easily specify the state of any cell' do
    expect(world.cell_state(2,1)).to eq(:dead)
  end

  it 'can switch the state of any cell' do
    world.switch_cell(2,1)
    expect(world.cell_state(2,1)).to eq(:alive)
  end

end
