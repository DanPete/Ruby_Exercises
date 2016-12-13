=begin

def clock &block
  current_hour = Time.new.hour
  @current_hour = current_hour
  if current_hour > 12
    current_hour = current_hour - 12
  end
  if current_hour == 0
    current_hour = 12
  end
  current_hour.times do
    block.call
  end
end


clock do
  puts "#{@current_hour}"
  puts "Dong!"
  puts "Tick-Tock"
end

=end


=begin

def time
  current_hour = Time.new.hour
  if current_hour > 12
    current_hour = current_hour - 12
  end
  if current_hour == 0
    current_hour = 12
  end
  while (current_hour > 0)
    puts "Dong! #{current_hour}"
    current_hour -=1
  end
end

puts time

=end

$nesting_depth = -1
def log(description, &block)
  $nesting_depth += 1
  tabs = "\t" * $nesting_depth
  puts "#{tabs}Starting #{description}..."
  results = block.call
  puts "#{tabs} #{description} finished, returning #{results}"

end

log ("outer block") do
  log("some little block") do
    log ("teeny-tiny-block") do
                "lots of love"
    end
      6*7
  end

  log ("yet another block") do
    "WHAT".downcase
  end
  1 == 1
end
