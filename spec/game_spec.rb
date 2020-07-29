require 'game'

describe Game do
  context 'grid has correct dimension' do
    it 'should return correct array cell count' do
      expect(subject.grid.length).to eq(6)
    end
  end

  context 'loading conditions into game'
    it 'loads varying starting states into grid' do
      expect{ subject.condition('glider') }.to change{ subject.grid[1][1] }.from(0).to(1)
    end
  end

  context 'update buffer' do
    it 'updates grid to glider start configuration' do
      subject = Game.new
      subject.condition('glider')
      p subject.state_check
      expect(subject.buffer).not_to eq(subject.grid) 
    end
  end

#   context 'detecting cell state' do
#     it 'lists 0 actiations if none are present'
#       expect(subject.conditions).to be_kind_of(Array)
    
#       expect(subject.state_check).to eq(0)
#   end
# end