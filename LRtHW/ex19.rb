def cheese_and_crackers(cheese_count, box_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{box_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket.\n\n"
end

puts "\nWe can just give the function numbers directly:"
cheese_and_crackers(20, 30)

puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

puts "OR, we can use variables from our script:"
puts "Cheese: "
amount_of_cheese = gets.chomp
puts "Crackers: "
amount_of_crackers = gets.chomp

cheese_and_crackers(amount_of_cheese, amount_of_crackers)
