# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

require "prime"

puts Prime.prime_division(600851475143)


=begin


primes = []
Prime.each do |n|
  primes << n
  break if n > 0
end
puts primes.last


=end