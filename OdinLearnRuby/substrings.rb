def substrings (string, dictionary)

string = string.downcase

frequency = Hash.new(0)


  dictionary.each do |x|
    frequency[x] = string.scan(x).count if string.include?(x)
  end
#frequency = frequency.sort_by { |a, b| b }
frequency.each { |key, value| puts "\"#{key}\" => #{value}"}

end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
