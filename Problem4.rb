# A palindromic number reads the same both ways. The largest palindrome 
# made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def is_palindrome?(number)
  number.to_s == number.to_s.reverse
end

def get_highest_palindrome
  palindrome_array = []

  100.upto(999).each do |x|
    100.upto(999).each do |y|
      product = x * y
      palindrome_array << product if is_palindrome?(product)
    end
  end
  palindrome_array.max
end

puts get_highest_palindrome