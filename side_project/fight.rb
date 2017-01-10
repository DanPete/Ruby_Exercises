class Player
  attr_accessor :name, :health, :power, :mana

  def initialize(n, h, pow, m)
    @name = n
    @health = h
    @power = pow
    @mana = m
  end

  def is_alive
      @health > 0
  end

  #heal is not functioning correctly yet.
  def heal
    @mana -= 5
    if @mana < 5
      puts "You don't have the mana"
      @health += 0
    else
      @health += 10
    end
  end

  def spell
    @health -= gets.chomp.to_i
  end

  def power_up
    @power += 10
  end

  def run
    puts "You run on home!"
    exit
  end

  def hit(opponent)
    hitting = self.power
    opponent.health -= hitting
  end

  def to_s
    "#{name}: Health : #{health}, Power: #{power}, Mana #{mana}"
  end
end

def fight(p1,p2)
  round = 0
  while p1.is_alive && p2.is_alive
    p1.hit(p2)
    p2.hit(p1)
    puts "\nRound #{round +=1}"
    puts "#{p1.name} hits #{p2.name} for #{p1.power}"
    puts "#{p2.name} hits #{p1.name} for #{p2.power}"
    puts
    show_info(p1, p2)

    action = gets.chomp

    case action
    when "heal"
      p1.heal
    when "spell"
      p2.spell
      puts "#{p2.name} screams in agony!"
    when "run"
      p1.run
    when "power"
      p1.power_up
    when "even"
      p1.power = p2.power
      p1.health = p2.health
    when "win"
      puts "You win!"
      p1.health = -1000
      puts "jk"
      show_info(p1,p2)
    end
  end

  if p1.is_alive
    puts "#{p1.name} WON!"
  elsif p2.is_alive
    puts "#{p2.name} WON!"
  else
    puts "TIE!"
  end
end

def round
  round = 0
  until round >
    round += 1
    puts "Round #{round}"
  end
end

def show_info_init(*p)
  p.each { |x| puts x }
end

def show_info(*p)
  p.each { |x| puts x }
end

def weapon
  choose_power = ""#gets.chomp.downcase
  case choose_power
  when "knife"
    choose_power = 30
  when "bat"
    choose_power = 20
  else
    choose_power = 1+rand(20)
  end
end

#initialize Players
puts "PLAYERS INFO"
# puts "Player 1 Name: "
choose_name = "Dan"
#puts "Power: "

p1 = Player.new(choose_name, 50+rand(50), weapon, 10)
# puts "Player 2 Name: "
p2 = Player.new("Enemy", 50+rand(50), 1+rand(20), 10)

#show Player info
puts "-------------"
show_info_init(p1,p2)
puts "Press Return to continue"
gets.chomp

puts "\nLETS FIGHT \n\n"
fight(p1,p2)
