require 'pry'
# 2520 is the smallest number that can be divided by 
# each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly 
# divisible by all of the numbers from 1 to 20?

def gcd(num1, num2)

  loop do
    remainder = num1 % num2
    break if remainder == 0
    num1 = num2
    num2 = remainder
  end

  num2
end

def lcm(num1, num2)
  (num1 * num2)/gcd(num1, num2)
end

p (1..20).inject { |x,y| lcm(x,y) }