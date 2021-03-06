def englishNumber number
  if number < 0
    return 'Please enter a number that isn\'t negtive.'
  end
  if number == 0
    return 'zero'
  end

  numString = ''

  onesPlace = ['one', 'two', 'three', 'four', 'five',
            'six', 'seven', 'eight', 'nine']

  tensPlace = ['ten', 'twenty', 'thirty', 'fourty',
            'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen',
            'sixteen', 'seventeen', 'eighteen', 'nineteen']

 # hundredsPlace = []

 # thousandsPlace = []

  left = number

  write = left/1000000
  left = left - write * 1000000

  if write > 0
    millions = englishNumber write
    numString = numString + millions + ' million'

    if left > 0
      numString = numString + ' '
    end
  end

  write = left/1000
  left = left - write * 1000

  if write > 0
    thousands = englishNumber write
    numString = numString + thousands + ' thousand'

    if left > 0
      numString = numString + ' '
    end
  end

  write = left/100
  left = left - write * 100

  if write > 0
    hundreds = englishNumber write
    numString = numString + hundreds + ' hundred'

    if left > 0
      numString = numString + ' '
    end
  end

  write = left/10
  left = left - write * 10

  if write > 0
    if((write == 1) && (left > 0))
      numString = numString + teenagers[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end

    if left > 0
      numString = numString + '-'
    end
  end

  write = left
  left = 0

  if write > 0
    numString = numString + onesPlace[write-1]
  end
  numString
end

=begin
puts englishNumber(0)
puts englishNumber(11)
puts englishNumber(33)
puts englishNumber(50)
puts englishNumber(523)
puts englishNumber(100)
puts englishNumber(1111)
puts englishNumber(5)
puts englishNumber(999)
puts englishNumber(111111)
puts englishNumber(2_222_222)
=end

bottles = 999

until (bottles == 1)
  puts "#{englishNumber(bottles).capitalize} bottles of beer on the wall, #{englishNumber(bottles)} bottles of beer"
  bottles -= 1
  puts "Take one down and pass it around, #{englishNumber(bottles)} bottles of beer on the wall"
  puts
end

puts
puts "One bottle of beer on the wall, One bottle of beer"
puts "Take one down and pass it around, no more bottles of beer on the wall"
puts
puts "No more bottles of beer on the wall, No bottles of beer"
puts "Go to the store buy some more, ninety-nine bottles of beer on the wall"
