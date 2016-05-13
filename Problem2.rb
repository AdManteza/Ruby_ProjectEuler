# Each new term in the Fibonacci sequence is generated 
# by adding the previous two terms. By starting with 1 and 2, 
# the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose 
# values do not exceed four million, find the sum of the even-valued terms.

def fibonacci_sum
  a, b, c, sum = 1, 2, 0, 2
  
  while b < 4000000 
    c = a + b
    a = b
    b = c

    sum += c if c.even?
  end
  sum
end

p fibonacci_sum