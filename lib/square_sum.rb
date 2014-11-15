# The sum of the squares of the first ten natural numbers is,
#
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def find_square(number)
  number ** 2
end

def find_number_range(first, last)
  (first..last).to_a
end

def square_all(array)
  array.map { |num| num ** 2}
end

def sum_all(array)
  array.reduce(:+)
end

def sum_squares(first, last)
  array = find_number_range(first, last)
  squares = square_all(array)
  sum_all(squares)
end

def square_the_sum(first, last)
  array = find_number_range(first, last)
  sum = sum_all(array)
  find_square(sum)
end
