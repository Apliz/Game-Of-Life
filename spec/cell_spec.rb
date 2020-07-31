require 'cell'

describe Cell do
  describe '.count_neighbours' do
    context 'when iterating through grid cells' do
      it 'returns the number of neighbours to a cell' do
        fake_cell = double
        test_grid = [
          [0,0,0,0,0,0],
          [0,0,1,0,0,0],
          [0,0,1,0,1,0],
          [0,0,1,1,0,0],
          [0,1,0,1,0,0],
          [0,0,0,0,0,0]
        ]
        allow(fake_cell).to receive(:count_neighbours).with(test_grid).and_return(3)
        expect(subject.count_neighbours(2,2,test_grid)).to eq(fake_cell.count_neighbours(test_grid))
      end
    end
  end
end