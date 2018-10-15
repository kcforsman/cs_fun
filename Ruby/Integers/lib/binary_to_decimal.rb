def binary_to_decimal(array)
  return if array.nil? || array.length < 1
  length = array.length - 1
  current_index = 0
  sum = 0
  while length >= 0
    sum += (array[current_index]*(2**length))
    current_index += 1
    length -= 1
  end
  return sum
end

def binary_to_decimal_recursive(array, length=nil, current_index = 0)
  return if array.nil? || array.length < 1
  length = array.length if length.nil?
  return (array[current_index]*(2**(length-1))) if length - 1 == 0
  return (array[current_index]*(2**(length-1))) + binary_to_decimal_recursive(array, length - 1, current_index + 1)
end
