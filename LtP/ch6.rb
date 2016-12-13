=begin

lineWidth = 40

command = 'Program'.center(lineWidth)

until (command == 'bye') || (command =='Bye')
  puts command
  command = gets.chomp
end

puts 'Come again soon!'


bottles = 99

until (bottles == 1)
  puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer on the wall"
  bottles -= 1
  puts "Take 1 down, pass it around #{bottles} bottles of beer on the wall"
end

puts "1 bottle of beer on the wall, 1 bottle of beer"
puts "Take 1 down, pass it around 1 bottle of beer on the wall"
puts "No bottles of beer on the wall, No bottles of beer"

=end

=begin

puts "HI SONNY, HOW ARE YOU?"
speak = nil
bye = 0

while (bye < 3)
  speak = gets.chomp
  if (speak == "bye".upcase)
    puts "HUH?"
    bye += 1
  elsif (speak == speak.upcase)
    puts "NO, NOT SINCE 19#{rand(99)}!"
  else
    puts "HUH?! SPEAK UP, SONNY"
  end
end

if (bye == 3)
  puts "OKAY OKAY, BYE!"
end

=end

begin_year = nil
end_year = nil

puts "Beginning year?"
begin_year = gets.chomp.to_i
puts "Ending year?"
end_year = gets.chomp.to_i
puts = "......."

while begin_year <= end_year
  while ((begin_year % 4 == 0 && begin_year % 100 != 0) || (begin_year % 100 == 0 && begin_year % 400 == 0))
    puts "#{begin_year} is a leap year!"
    begin_year += 1
  end
  begin_year += 1
end
