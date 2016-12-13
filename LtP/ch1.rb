hour_in_year = 365 * 24

puts "There #{hour_in_year} hours in a year"

minutes_in_year = hour_in_year * 60

minutes_in_decade = minutes_in_year * 10

puts "There are #{minutes_in_decade} minutes in a decade."

my_age = 27

seconds_in_year = minutes_in_year * 60

puts "I'm #{my_age * seconds_in_year} seconds old."

age_in_seconds = 1_246_000_000/seconds_in_year

puts "If you are 1246 million seconds old, you're are #{age_in_seconds} years old."