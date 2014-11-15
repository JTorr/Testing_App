def multiply_array(array)
  array.reduce(:*)
end

def find_sub_array(first, last, array)
  array.slice(first, last)
end

def compare_products(array1, array2)
  multiply_array(array1) > multiply_array(array2) ? array1 : array2
end

def next_array(array, first_element, length)
  array.slice(first_element + 1, length)
end
