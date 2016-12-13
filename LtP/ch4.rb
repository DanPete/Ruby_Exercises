puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp

puts "Hello, #{first_name} #{last_name}"

puts "What is your favorite number?"
favorite_number = gets.chomp.to_i

suggest_number = favorite_number + 1

puts "Why not #{suggest_number}?! It is bigger and better than #{favorite_number}!"