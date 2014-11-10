def palindrome?(number)
  number.to_s == number.to_s.reverse
end




# @palindromes = []
#
# def find_palindromes(first_num, last_num)
#   for i in first_num..last_num
#     string = i.to_s
#     if string == string.reverse
#       @palindromes << i
#     end
#   end
# end
#
# puts find_palindromes(10, 99)
