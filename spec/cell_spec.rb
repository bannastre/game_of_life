require 'cell'

describe Cell do
  subject(:cell) { described_class.new }

  it { is_expected.to respond_to(:state) }

  it 'starts dead' do
    expect(cell.state).to eq :dead
  end

  it 'can be alive' do
    cell.switch
    expect(cell.state).to eq :alive
  end
end
