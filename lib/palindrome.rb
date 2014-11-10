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

def find_factors(palindrome, digits)
  start_num = ("1" + ("0" * (digits - 1))).to_i
  end_num = ("9" * digits).to_i
  for i in start_num..end_num  #need to change this to use number of digits
    @factors << i if palindrome % i == 0 && i.to_s.length == digits
  end
  @factors
end

def largest_palindrome(palindromes)
  @palindromes = palindromes
  @max = @palindromes.pop
end

def find_max_factor(factors)
  @factors = factors.sort!
  @max_factor = @factors.pop
end

def find_second_factor(palindrome, max_factor, factors)
  a = factors.pop
  return a if max_factor * a == palindrome
  find_second_factor(palindrome, max_factor, factors)
end

def find_answer(start_range, end_range, digits)
  palindromes = find_palindromes(start_range, end_range)
  palindrome = largest_palindrome(palindromes)
  factors = find_factors(palindrome, digits)
  max_factor = find_max_factor(factors)
  second_factor = find_second_factor(palindrome, max_factor, factors)
  return palindrome if second_factor != nil
  find_answer
end
