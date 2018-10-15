def find_factorial_value(n)
  return if n.nil? || n < 0
  return 1 if n == 0
  factorial = 1
  n.times do |i|
    factorial *= (i+1)
  end
  return factorial
end

def find_factorial_value_recursive(n)
  return if n.nil? || n < 0
  return 1 if n == 0
  return n * find_factorial_value_recursive(n-1)
end
