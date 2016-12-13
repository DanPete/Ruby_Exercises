=begin

foods = []

puts "What would you like to add to the list?"

loop do
  response = gets.chomp.downcase
  break if response.empty?
  foods.push (response)
end

foods.each_index do |first|
  foods.each_index do |second|
    if foods[first] < foods[second]
      foods[first], foods[second] = foods[second], foods[first]
    end
  end
end

 puts "The foods you have entered in alphabetical order are: #{foods.join(', ')}."

=end

=begin

book = ["Table of Contents", "Chapter 1: Numbers", "page 1",
        "Chapter 2: Letters", "page 72", "Chapter 3: Variables",
        "page 118"]

lineWidth = 50
halfLineWidth = lineWidth / 2

puts book[0].center lineWidth
puts book[1].ljust(halfLineWidth) + book[2].rjust(halfLineWidth)
puts book[3].ljust(halfLineWidth) + book[4].rjust(halfLineWidth)
puts book[5].ljust(halfLineWidth) + book[6].rjust(halfLineWidth)

=end

book = ["Table of Contents", "Chapter 1: Numbers", "page 1",
        "Chapter 2: Letters", "page 72", "Chapter 3: Variables",
        "page 118"]

lineWidth = 50
halfLineWidth = lineWidth / 2

puts book.shift.center(lineWidth)
book.each_slice(2) do |chapter, page|
  puts chapter.ljust(halfLineWidth) + page.rjust(halfLineWidth)
end
