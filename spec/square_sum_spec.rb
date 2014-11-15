require 'square_sum'

describe 'SquareSum' do
  context 'has a method called find_square' do
    it 'returns 9 when given number 3' do
      result = find_square(3)
      expect(result).to eq 9
    end
  end

  context 'has a method called find_number_range' do
    it 'returns an array including the number 1..5' do
      result = find_number_range(1, 5)
      expect(result).to match_array([1, 2, 3, 4, 5])
    end
  end

  context 'has a method called square_all' do
    it 'returns an array of 1..5 squared' do
      result = square_all([1, 2, 3, 4, 5])
      expect(result).to match_array([1, 4, 9, 16, 25])
    end
  end

  context 'has a method called sum_all' do
    it 'returns the sum of 15 for an array of numbers 1..5' do
      result = sum_all([1, 2, 3, 4, 5])
      expect(result).to eq 15
    end
  end

  context 'has a method called sum_squares' do
    it 'returns 385 for a range of 1..10' do
      result = sum_squares(1, 10)
      expect(result).to eq 385
    end
  end

  context 'has a method called square_the_sum' do
    it 'returns 3025 for a range of 1..10' do
      result = square_the_sum(1, 10)
      expect(result).to eq 3025
    end
  end
end
