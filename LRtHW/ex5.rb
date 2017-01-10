name = "Dan Sack"
age = 27
height_in_inches = 73
inches_to_cm = height_in_inches * 2.54.to_i
weight = 160
eyes = "Brown"
teeth = "White"
hair = "Brown"

puts "Let's talk about #{name}."
puts "He's #{height_in_inches} inches tall, which is #{(height_in_inches * 2.54).to_i} cm."
puts "He's #{weight} pounds heavy, which is #{(weight / 2.2046226218).round(2)} kg."
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee"

puts "If I add #{age}, #{height_in_inches}, and #{weight}, I get #{age + height_in_inches + weight}"