require 'largest_product'

describe 'LargestProduct' do
  context 'has a method called multiply_array' do
    it 'returns 120 for the array [2, 3, 4, 5]' do
      result = multiply_array([2, 3, 4, 5])
      expect(result).to eq 120
    end
  end

  context 'has a method called find_sub_array' do
    it 'finds the first 4 elements of an array' do
      result = find_sub_array(0, 4, [1, 2, 3, 4, 5, 6])
      expect(result).to match_array([1, 2, 3, 4])
    end
  end

end
