require 'palindrome'

describe 'Palindrome' do

  context 'checks if a number is a palindrome' do
    it 'returns false for a non-palindrome' do
      expect(palindrome?(12)).to be_falsey
    end

    it 'returns true for a palindrome' do
      expect(palindrome?(11)).to be_truthy
    end
  end


  before(:all) do
    @palindromes = []
    @factors = []
  end

  context 'finds all palindromes' do
    it 'between 10 and 99 inclusive' do
      @palindromes = find_palindromes(10, 99)
      expect(@palindromes).to include(11, 22, 33, 44, 55, 66, 77, 88, 99)
      expect(@palindromes).not_to include 20
    end
  end

  context 'finds all factors of a palindrome' do
    it 'with 2 digits' do
      @factors = find_factors(22, 10, 99)
      expect(@factors).to include(11, 22)
      expect(@factors).not_to include(1, 2)
    end
  end

  context 'returns the largest palindrome' do
    it 'from the list of possible answers' do
      palindromes = [77, 88, 99]
      @max = largest_palindrome(palindromes)
      expect(@max).to eq 99
      expect(palindromes).not_to include(99)
    end
  end




end
