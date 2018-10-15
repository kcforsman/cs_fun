def  is_integer_palindrome?(integer)
  return if integer.nil? || integer < 0
  string = integer.to_s
  i = 0
  j = string.length - 1
  while i < j
    if string[i] != string[j]
      return false
    end
    i+=1
    j-=1
  end
  return true
end

def  is_integer_palindrome_digits?(integer)
  return if integer.nil? || integer < 0
  digits = integer.digits
  i = 0
  j = digits.length - 1
  while i < j
    if digits[i] != digits[j]
      return false
    end
    i+=1
    j-=1
  end
  return true
end

def  is_integer_palindrome_recursive?(integer, i=0, j=nil)
  return if integer.nil? || integer < 0
  string = integer.to_s
  j = string.length - 1 if j.nil?
  return true if  i >= j
  return false if string.to_s[i] != string.to_s[j]
  is_integer_palindrome_recursive?(integer, i+1, j-1)
end
