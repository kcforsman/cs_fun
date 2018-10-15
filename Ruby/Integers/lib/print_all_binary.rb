def print_all_binary(n)
  return if n.nil? || n < 0
  base_index = n - 1
  (2**n).times do |i|
    puts "#{i}: #{decimal_to_binary(i, [], n)}"
  end
end

def decimal_to_binary(value, binary_array=[], binary_length=nil, current_index=0)
  return if value.nil?
  binary_length = value.bit_length if binary_length.nil?
  return binary_array if binary_length == 0
  next_value = value - (2**(binary_length-1)) >= 0 ? 1 : 0
  value -= (2**(binary_length-1)) if next_value == 1
  binary_array[current_index] = next_value
  decimal_to_binary(value, binary_array, binary_length-1, current_index+1)
end

print_all_binary(4)
