def is_divisible_by_three?(number)
  is_divisible_by(number, 3)
end

def is_divisible_by_five?(number)
  is_divisible_by(number, 5)
end

def is_divisible_by_fifteen?(number)
  is_divisible_by(number, 15)
end

def is_divisible_by(number, factor)
  number % factor == 0
end

def find_all_multiples(number)
  arr = []
  1.upto(number) { |number| arr << number if is_divisible_by(number, 3) || is_divisible_by(number, 5) }
  return arr
end

def sum_multiples(number)
  arr = find_all_multiples(number)
  arr.reduce(:+)
end

puts sum_multiples(100)
#2418
