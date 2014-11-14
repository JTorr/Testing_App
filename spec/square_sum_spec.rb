require 'square_sum'

describe 'SquareSum' do
  context 'has a method called find_square' do
    it 'returns 9 when given number 3' do
      result = find_square(3)
      expect(result).to eq 9
    end
  end
end
