types_of_people = 10
x = "There are #{types_of_people} types of people."
binary = "binary"
do_not = "don't"
# Binary inside of y, do_not inside of y
y = "Those who know #{binary} and those who #{do_not}."

puts x
puts y

# X inside of puts
puts "I said #{x}."
# y inside of puts
puts "I also said: '#{y}'."

hilarious = false
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

puts joke_evaluation

w = "This is the left side of..."
e = "a string with a right side"

puts w + e