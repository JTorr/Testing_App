# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def number_is_divisible_by?(number, divisor)
  number % divisor == 0
end

def check_divisibility(number, divisors)
  divisors.each do |divisor|
    return false unless number_is_divisible_by?(number, divisor)
  end
  true
end

#TODO: refactor to exclude divisors that are multiples of each other
def find_smallest_multiple(divisors)
  max_product = divisors.reduce(1,:*)
  smallest = 1
  while smallest < max_product
    return smallest if check_divisibility(smallest, divisors)
    smallest += 1
  end
  max_product
end
