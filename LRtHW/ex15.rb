

print "Type the filename again: "
file = $stdin.gets.chomp

txt = open(file)

print txt.read

txt.close

puts
