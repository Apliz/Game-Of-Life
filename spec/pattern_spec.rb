require 'pattern'
require 'game'

describe Pattern do
  
  describe '.loaf' do
    context 'when selecting start pattern' do
      it 'is a 2d array' do
        expect(subject.loaf).to be_a(Array)
      end
      it 'returns the loaf starting grid' do
        expect(subject.loaf).to eq([
          [0, 0, 0, 0, 0, 0, 0, 0], 
          [0, 0, 0, 0, 1, 1, 0, 0], 
          [0, 0, 0, 1, 0, 0, 1, 0], 
          [0, 0, 0, 0, 1, 0, 1, 0], 
          [0, 0, 0, 0, 0, 1, 0, 0], 
          [0, 0, 0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0, 0, 0]
        ])
      end

      # testing this methods effect on Game has to come
      # from the Game class spec (the receiver) and not pattern (the sender)
      # at this stage I with current knowledge and time I can only test explicit output
      # and then affirm integration with parallelisation of tests.
      # let(:pattern) {Pattern.create}
      # let(:loaf) {double('loaf')}
      # # let(:pattern) {double([[0,0,0,0], [0,0,0,0]])}

      # it 'responds to Game class' do
      #   allow(game).to receive(:condition.and_return([[0,0,0,0], [0,0,0,0]])

      #   expect(game.condition).to eq [[0,0,0,0], [0,0,0,0]]
      
    end
  end
end