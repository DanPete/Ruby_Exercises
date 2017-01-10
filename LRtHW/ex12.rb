print "How much money would you like to deposit? "
money = gets.chomp.to_f
ten_percent = money * 0.1
nintey_percent = money - ten_percent
money_format = '%.2f' % ten_percent
nintey_percent_money_format = '%.2f' % nintey_percent

puts "Here is 10%: $#{money_format}"
puts "The other 90%: $#{nintey_percent_money_format}"
=begin

print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_f

smaller = number / 100
puts "A smaller number is #{smaller}."

=end