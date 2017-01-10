class Report
  attr_accessor :name, :gender, :ability, :forethought

  def initialize(n,g,a,f)
    @name = n
    @gender = g
    @ability = a
    @forethought = f
  end

  def s_he
    if @gender == "female"
      "she"
    else
      "he"
    end
  end

  def her_his
    if @gender == "female"
      "her"
    else
      "his"
    end
  end

  def abilities
    case @ability
    when 5
      "always"
    when 4
      "frequently"
    when 3
      "occationally"
    when 2
      "rarely"
    when 1
      "never"
    end
  end

  def ending
    case @forethought
    when 5
      "joy"
    when 4
      "pleasure"
    when 3
      "needs improvement"
    when 2
      "hard to handle"
    when 1
      "not teachable"
    end
  end


  def to_s
    puts "This semester we learned... #{@name} did well. #{s_he} was... #{her_his} ability are #{abilities}. #{@name} is a #{ending} to have in class"
  end

end

roli = Report.new("Roli", "male", 2, 4)
puts roli
tamara = Report.new("Tamara", "female", 5, 5)
puts tamara
