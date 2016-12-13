=begin

seconds_in_year = 365 * 24 * 60 * 60
# puts "There are #{seconds_in_year} seconds in a year."


seconds_old = Time.now - Time.mktime(1989, 4, 28, 10, 11)

puts "You are #{seconds_old.to_i} seconds old right now."

turn = 1_000_000_000 - seconds_old
puts
puts "You have #{turn.to_i} seconds until you are 1 billion seconds old."

years_until = turn / seconds_in_year
puts
puts "That is #{years_until.to_i} years"

time = Time.now
time2 = time + turn
puts
puts "You will turn 1 billions seconds old on #{time2}."

turn_years = (turn + seconds_old) / seconds_in_year
puts
puts "You will be #{turn_years.to_i} years old when you turn 1 billion seconds old"

# check = seconds_old / seconds_in_year
# puts check

=end

=begin

puts "What year were you born in?"
year = gets.chomp.to_i
puts "What month were you born in?"
month = gets.chomp.to_i
puts "What day were you born on"
day = gets.chomp.to_i

puts "You were born #{Time.mktime(year, month, day)}"

birthday = Time.mktime(year, month, day)

seconds_in_year = 365 * 24 * 60 * 60

years_old = (Time.now - birthday)/seconds_in_year

puts "And you are #{years_old.to_i} years old."

while (years_old > 1)
  puts "SPANK! #{years_old.to_i}"
  years_old -=1
end

=end

=begin

class Die

  def initialize
    roll
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    "You rolled a #{@numberShowing}"
  end

  def cheat
    puts "What do you want to roll? (1-6)"
    number = gets.chomp.to_i
    if number <= 6 && number >= 1
      puts "Your cheat number is #{@numberShowing = number}."
    else
      puts "CHEATER!"
    end
  end

end

puts Die.new.cheat
puts Die.new.showing

=end

=begin

class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly       = 10
    @stuffInIntestine   =  0

    puts "#{name} is born."
  end

  def feed
    puts "You feed #{@name}."
    @stuffInBelly = 10
    passageOfTime
  end

  def walk
    puts "You walk #{@name}."
    @stuffInIntestine = 0
    passageOfTime
  end

  def putToBed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end

  def toss
    puts "You toss #{@name} up in the air."
    puts "He giggles, which singes your eybrows"
    passageOfTime
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "He briefly dozes off..."
    passageOfTime
    if @asleep
      @asleep = false
      puts "...but wakes when you stop"
    end
  end

  private

  def hungry?
    @stuffInBelly <= 2
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      @stuffInBelly     = @stuffInBelly      - 1
      @stuffInIntestine = @stuffInIntestine  + 1
    else
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts "Whoops! #{@name} had an accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name}\'s stomach grumbles..."
    end

    if poopy?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly"
      end
      puts "#{@name} does the potty dance..."
    end
  end

end

puts "Enter pet's name: "
userInput = gets.chomp
pet = Dragon.new userInput

loop do
  puts "What next? (Options: feed, toss, walk, rock, putToBed or exit)"
  userInput = gets.chomp

  break if userInput == "exit"

  pet.send(userInput) rescue puts "Invalid input"
end

=end



class OrangeTree

  def initialize name
    @name = name
    @height = 1
    @fruit = 0

    puts "#{name} is the name of your baby tree."
  end

  def height
    puts "The orange tree is #{@height} feet tall"
  end

  def oneYearPasses
    if @height < 10
      @height = @height +=1
      puts "One year passes"
    else
      puts "Tree dies"
      exit
    end

    if @height == 3
      @fruit = @fruit = 1
      # puts "#{@fruit} fruit"
    elsif @height == 4
        @fruit = @fruit = 2
    elsif @height == 5
        @fruit = @fruit = 6
    elsif @height == 6
        @fruit = @fruit = 12
    elsif @height == 7
        @fruit = @fruit = 24
    elsif @height == 8
        @fruit = @fruit = 48
    elsif @height == 9
        @fruit = @fruit = 96
    elsif @height == 10
        @fruit = @fruit = 192
    end

  end

  def countTheOranges
    puts "There are #{@fruit} oranges on the tree"
  end

  def pickAnOrange
    if @fruit > 0
      @fruit = @fruit -= 1
      puts "Mmm, that was a good orange!"
    else
      puts "Oops! There are #{@fruit} oranges left on the tree!"
    end
  end

  def year
    oneYearPasses
  end

  def pick
    pickAnOrange
  end

  def count
    countTheOranges
  end


end

puts "What do you want to name your tree?"
userInput = gets.chomp
tree = OrangeTree.new userInput

loop do

  puts "What do you want to do with the tree?(year, pick, orange)"
  userInput = gets.chomp

  break if userInput == "exit"

  tree.send(userInput) rescue puts "Invalid input"
end

=begin

tree = OrangeTree.new 'Little'
tree.height
tree.oneYearPasses
tree.pickAnOrange
tree.height
tree.oneYearPasses
tree.height
tree.oneYearPasses
tree.height
tree.oneYearPasses
tree.height
tree.oneYearPasses
tree.height
tree.countTheOranges
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
tree.pickAnOrange
tree.countTheOranges
tree.oneYearPasses
tree.oneYearPasses
tree.countTheOranges
tree.oneYearPasses
tree.oneYearPasses
tree.height
tree.countTheOranges
tree.oneYearPasses

=end