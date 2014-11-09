require 'sum_multiples'

describe 'SumMultiples' do
  context 'knows that a number is divisible by' do
    it '3' do
      expect(is_divisible_by_three?(3)).to be_truthy
    end

    it '5' do
      expect(is_divisible_by_five?(5)).to be_truthy
    end

    it '15' do
      expect(is_divisible_by_fifteen?(15)).to be_truthy
    end
  end

  context 'knows that a number is not divisible by' do
    it '3' do
      expect(is_divisible_by_three?(1)).to be_falsey
    end

    it '5' do
      expect(is_divisible_by_five?(3)).to be_falsey
    end

    it '15' do
      expect(is_divisible_by_fifteen?(1)).to be_falsey
    end
  end

  context 'it finds all multiples of 3 and 5' do
    it 'up to and including 10' do
      expect(find_all_multiples(10)).to include 3
      expect(find_all_multiples(10)).to include 5
      expect(find_all_multiples(10)).not_to include 1
    end
  end
end
