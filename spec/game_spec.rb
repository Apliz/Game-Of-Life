require 'game'

describe Game do

        # testing this methods effect on Game has to come
      # from the Game class spec (the receiver) and not pattern (the sender)
      # at this stage I with current knowledge and time I can only test explicit output
      # and then affirm integration with parallelisation of tests.
  describe '.condition' do
    context 'when loading loaf from Pattern' do   
      it 'returns the loaf grid' do
          fake_game = double
          fake_pattern = double
          allow(fake_pattern).to receive(:loaf).and_return([
            [0, 0, 0, 0, 0, 0, 0, 0], 
            [0, 0, 0, 0, 1, 1, 0, 0], 
            [0, 0, 0, 1, 0, 0, 1, 0], 
            [0, 0, 0, 0, 1, 0, 1, 0], 
            [0, 0, 0, 0, 0, 1, 0, 0], 
            [0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 0, 0]
          ])
          allow(fake_game).to receive(:condition).with('loaf').and_return(fake_pattern.loaf)
  
          expect(subject.condition('loaf')).to eq(fake_game.condition('loaf'))
      end

    end
    
    context 'when loading toad from Pattern' do
      it 'returns the toad grid' do
        fake_game = double
        fake_pattern = double
        allow(fake_pattern).to receive(:toad).and_return([
          [0, 0, 0, 0, 0, 0, 0, 0], 
          [0, 0, 0, 0, 0, 0, 0, 0], 
          [0, 0, 0, 0, 0, 0, 0, 0], 
          [0, 0, 0, 1, 1, 1, 0, 0], 
          [0, 0, 1, 1, 1, 0, 0, 0], 
          [0, 0, 0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0, 0, 0]
        ])
        allow(fake_game).to receive(:condition).with('toad').and_return(fake_pattern.toad)

        expect(subject.condition('toad')).to eq(fake_game.condition('toad'))
      end
    end

    context 'when loading test from Pattern' do
      it 'returns the test grid' do
        fake_game = double
        fake_pattern = double
        allow(fake_pattern).to receive(:test).and_return([
          [0, 0, 0, 0, 0, 0, 0, 0], 
          [0, 0, 1, 1, 0, 0, 1, 0], 
          [0, 1, 1, 1, 0, 0, 0, 0], 
          [0, 0, 0, 0, 0, 0, 0, 0], 
          [0, 0, 0, 0, 0, 0, 0, 0], 
          [0, 0, 0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0, 0, 0]
        ])
        allow(fake_game).to receive(:condition).with('test').and_return(fake_pattern.test)
        expect(subject.condition('test')).to eq(fake_game.condition('test'))
      end
    end
  end
end
