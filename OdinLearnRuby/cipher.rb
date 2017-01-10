def cipher(str, y)
  split_str = str.split(//)
  split_str.collect! do |x|
    if /[a-z]/ =~ x
      x = x.ord
      x += y
      if x > 122
        x -= 26
      end
    elsif /[A-Z]/ =~ x
      x = x.ord
      x += y
      if x > 90
        x -= 26
      end
    end
    x.chr
  end
  puts split_str.join
end

puts "What you you like ciphered?"
str = gets.chomp
puts "How far shift?"
y = gets.chomp.to_i
puts "Here is your encypted code: "
cipher(str, y)
