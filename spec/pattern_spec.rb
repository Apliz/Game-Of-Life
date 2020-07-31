require 'pattern'
require 'game'

describe Pattern do
  
  describe '.loaf' do
    context 'when selecting loaf pattern' do
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
    end
  end

  describe '.toad' do
    context 'when selecting toad pattern' do
      it 'returns the toad starting grid' do
        expect(subject.toad).to eq([
          [0, 0, 0, 0, 0, 0, 0, 0], 
          [0, 0, 0, 0, 0, 0, 0, 0], 
          [0, 0, 0, 0, 0, 0, 0, 0], 
          [0, 0, 0, 1, 1, 1, 0, 0], 
          [0, 0, 1, 1, 1, 0, 0, 0], 
          [0, 0, 0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0, 0, 0]
        ])
      end
    end
  end

  describe '.test' do
    context 'when selecting test pattern' do
      it 'returns the test starting grid' do
        expect(subject.test).to eq([
          [0, 0, 0, 0, 0, 0, 0, 0], 
          [0, 0, 1, 1, 0, 0, 1, 0], 
          [0, 1, 1, 1, 0, 0, 0, 0], 
          [0, 0, 0, 0, 0, 0, 0, 0], 
          [0, 0, 0, 0, 0, 0, 0, 0], 
          [0, 0, 0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0, 0, 0],
          [0, 0, 0, 0, 0, 0, 0, 0]
        ])
      end
    end
  end
end