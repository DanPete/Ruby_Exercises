=begin

puts "What do you want now?!?"
response = gets.chomp

puts "WHADDAYA MEAN \"#{response.upcase}\"?!?   YOU\'RE FIRED!!"


lineWidth = 50

puts "Table of Contents".center lineWidth
puts "Chapter 1: Numbers".ljust(lineWidth/2) + "page 1".rjust(lineWidth/2)
puts "Chapter 2: Letters".ljust(lineWidth/2) + "page 72".rjust(lineWidth/2)
puts "Chapter 3: Variables".ljust(lineWidth/2) + "page 118".rjust(lineWidth/2)

=end

srand 0
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ""
srand 0
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))