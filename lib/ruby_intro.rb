# When done, submit this entire file to the autograder.

# Part 1
FIXNUM_MIN = -(2**(0.size * 8-2))
def sum arr
  # YOUR CODE HERE
  result = 0
  for num in arr do
    result += num  
  end
  result
end

def max_2_sum arr
  if arr.length() == 0
   return 0
  elsif arr.length() == 1
 return arr[0]
  else
   largest = FIXNUM_MIN
   sec_largest = FIXNUM_MIN
   for num in arr
      if num > largest
        sec_largest = largest
        largest = num
      elsif num > sec_largest
      sec_largest = num
      end
       
   end
  result = largest + sec_largest
  return result
   
  end
end

def sum_to_n? arr, n
  for i in 0..arr.length()-2
    for j in i+1..arr.length()-1
      if arr[i] + arr[j] == n
        return true
        
      end
    end
  end
  return false
end

# Part 2

def hello(name)
   result = "Hello, " + name
   result
end

def starts_with_consonant? s
  if s.length() == 0
    return false
  end
  in_s = s.downcase
  alphas = ('a'..'z').to_a
  vowels = ["a","e","i","o","u"]
  consonant = alphas - vowels
  if consonant.include? in_s[0]
    return true
  else
    return false
  end
  
end

def binary_multiple_of_4? s
  s = s.delete(" ")
  chars = s.split("")
  if chars.length() == 0
    return false
  elsif chars.length() == 1 and chars[0] == "0"
    return true
  end
  for x in chars
    if !"01".include? x
      return false
    end
  end
  if chars[-1] == "0" and chars[-2]=="0"
    return true
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
    raise ArgumentError.new(
    "ISBN value cannot be empty!"
    ) if isbn.length == 0
    raise ArgumentError.new(
      "Price cannot be 0") if price <= 0
    @isbn = isbn
    @price = price
  end
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string()
    "$%.2f" % [@price]
  end
end
