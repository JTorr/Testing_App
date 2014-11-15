def multiply_array(array)
  array.reduce(:*)
end

def find_sub_array(first, last, array)
  array.slice(first, last)
end
