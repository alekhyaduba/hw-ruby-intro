# When done, submit this entire file to the autograder.

# Part 1
FIXNUM_MIN =-(2**(0.size * 8 -2))
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
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
