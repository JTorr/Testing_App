require 'largest_product'

describe 'LargestProduct' do
  context 'has a method called multiply_array' do
    it 'returns 120 for the array [2, 3, 4, 5]' do
      result = multiply_array([2, 3, 4, 5])
      expect(result).to eq 120
    end
  end
end
