filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't wnat that, hit CRTL-C (^C)."
puts "If you do want that, hit RETURN"

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w+')

puts "Truncating the file. Goodbye!"
target.truncate(10)

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write(line1 + "\n" + line2 + "\n" + line3 + "\n")

target.close
puts "..."
puts "Here is what it says: "

file = target

txt = open(file)

puts txt.read
