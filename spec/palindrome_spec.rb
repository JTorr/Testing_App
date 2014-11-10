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
  end

  context 'finds all palindromes' do
    it 'between 10 and 99 inclusive' do
      @palindromes = find_palindromes(10, 99)
      expect(@palindromes).to include(11, 22, 33, 44, 55, 66, 77, 88, 99)
      expect(@palindromes).not_to include 20
    end
  end
end
