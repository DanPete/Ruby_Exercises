def add(a, b)
  puts "ADDING #{a} + #{b}"
  a + b
end

def subtract(a, b)
  puts "SUBTRACTING #{a} - #{b}"
  a - b
end

def multiply(a, b)
  puts "MULTIPLTING #{a} * #{b}"
  a * b
end

def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  a / b
end

puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(80, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height #{height}, Weight: #{weight}, IQ: #{iq}"
puts "-------"
puts "Here is a puzzle.\n\n"

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))


puts
puts "That becomes: #{what}. Can you do it by hand"
puts "By hand: "
puts 35 + (74 - (160 * (50 / 2)))
puts "Another test"
why = subtract(age, add(height, divide(weight, multiply(iq, 2))))

puts "Another test #{why}"



puts 35 - (74 + (160 / (50  * 2)))
