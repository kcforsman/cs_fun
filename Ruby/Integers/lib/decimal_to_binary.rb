def decimal_to_binary(value)
  return if value.nil?
  binary_length = value.bit_length
  index = 0
  binary_array = []
  while binary_length > 0
    next_value = value - (2**(binary_length-1)) >= 0 ? 1 : 0
    value -= (2**(binary_length-1)) if next_value == 1
    binary_array[index] = next_value
    binary_length -= 1
    index += 1
  end
  binary_array
end

def decimal_to_binary_recursive(value, binary_array=[], binary_length=nil, current_index=0)
  return if value.nil?
  binary_length = value.bit_length if binary_length.nil?
  return binary_array if binary_length == 0
  next_value = value - (2**(binary_length-1)) >= 0 ? 1 : 0
  value -= (2**(binary_length-1)) if next_value == 1
  binary_array[current_index] = next_value
  decimal_to_binary_recursive(value, binary_array, binary_length-1, current_index+1)
end
