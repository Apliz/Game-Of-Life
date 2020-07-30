require 'game'

describe Game do
  context 'grid has correct dimension' do
    it 'should return correct array cell count' do
      expect(subject.grid.length).to eq(6)
    end
  end

  context 'loading conditions into game'
    it 'loads varying starting states into grid' do
      expect{ subject.condition('loaf') }.to change{ subject.grid[1][2] }.from(0).to(1)
    end
  end

  # context 'neighbors' do
  #   it 'initialises cell when 3 neighbors' do
      
  #   end
  # end
