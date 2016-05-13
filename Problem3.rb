# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def largest_prime_factor(number)
  current_divisor_store = 2
  largest_divisor_store = 0

  loop do
    if number % current_divisor_store == 0
      number = number / current_divisor_store
      largest_divisor_store = current_divisor_store if current_divisor_store > largest_divisor_store
      current_divisor_store = 2
    else
      current_divisor_store += 1
    end
    break if current_divisor_store == number
  end
  number
end

puts largest_prime_factor(600851475143)