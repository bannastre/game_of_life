require 'neighbourhood'

describe Neighbourhood do
  subject(:neighbourhood) { described_class.new(3, 3) }

  it 'knows a number of cells equal to the width multiplied by the height' do
    expect(neighbourhood.cells.length).to eq(3)
    expect(neighbourhood.cells[0].length).to eq(3)
  end

  it 'can easily specify the state of any cell' do
    expect(neighbourhood.cell_state(2,1)).to eq(:dead)
  end

  it 'can switch the state of any cell' do
    expect(neighbourhood.switch_cell(2,1)).to eq(:alive)
  end

  it 'understands underpopulation' do
    neighbourhood.switch_cell(0,1)
    neighbourhood.age
    expect(neighbourhood.switch_cell(2,1)).to eq(:dead)
  end

  it 'understands birth' do
    neighbourhood.switch_cell(0,0)
    neighbourhood.switch_cell(0,1)
    neighbourhood.switch_cell(0,2)
    neighbourhood.age
    expect(neighbourhood.cell_state(2,1)).to eq(:alive)
  end

  it 'understands survival' do
    neighbourhood.switch_cell(2,1)
    neighbourhood.switch_cell(0,0)
    neighbourhood.switch_cell(0,1)
    neighbourhood.switch_cell(0,2)
    neighbourhood.age
    expect(neighbourhood.cell_state(2,1)).to eq(:alive)
  end

end
