def find_nth_fibonacci(n)
  return if n.nil? || n < 0
  return 0 if n == 0
  first = 0
  second = 1
  while n - 1 > 0
    temp = second
    second += first
    first = temp
    n-=1
  end
  return second
end

def find_nth_fibonacci_recursive(n, first=0, second=1)
  return if n.nil? || n < 0
  return 0 if n == 0
  return 1 if n == 1
  return first + find_nth_fibonacci_recursive(n-1, second, first+second)
end
