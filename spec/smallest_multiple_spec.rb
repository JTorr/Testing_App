require 'smallest_multiple'

describe 'SmallestMultiple' do
  context 'has a method called number_is_divisible_by?' do
    it 'returns true for 10 and divisor 2' do
      result = number_is_divisible_by?(10, 2)
      expect(result).to be_truthy
    end

    it 'returns false for 11 and divisor 2' do
      result = number_is_divisible_by?(11, 2)
      expect(result).to be_falsey
    end
  end

  context 'has a method called check_divisibility' do
    it 'returns true with number 2520 and divisors 1..10' do
      divisors = (1..10).to_a
      result = check_divisibility(2520, divisors)
      expect(result).to be_truthy
    end

    it 'returns true with number 2521 and divisors 1..10' do
      divisors = (1..10).to_a
      result = check_divisibility(2521, divisors)
      expect(result).to be_falsey
    end
  end
end
