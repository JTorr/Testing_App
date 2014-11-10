def palindrome?(number)
  number.to_s == number.to_s.reverse
end




@palindromes = []

def find_palindromes(first_num, last_num)
  for i in first_num..last_num
    @palindromes << i if palindrome?(i)
  end
  @palindromes
end
