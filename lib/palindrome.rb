def palindrome?(number)
  number.to_s == number.to_s.reverse
end




@palindromes = []
@factors = []

def find_palindromes(first_num, last_num)
  for i in first_num..last_num
    @palindromes << i if palindrome?(i)
  end
  @palindromes
end

def find_factors(palindrome, start_num, end_num)
  for i in start_num..end_num
    @factors << i if palindrome % i == 0
  end
  @factors
end
