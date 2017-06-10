def ask_recursively question
  puts question
  reply = gets.chomp.downcase
  if reply == 'yes'
    true
  elsif reply == 'no'
    false
  else
    puts 'Please answer "yes" or "no".'
    ask_recursively question
  end
end
ask_recursively 'Do you wet the bed?'

M = 'land'
o = 'water'
world = [[o,o,o,o,o,o,o,o,o,o,o],
[o,o,o,o,M,M,o,o,o,o,o],
[o,o,o,o,o,o,o,o,M,M,o],
[o,o,o,M,o,o,o,o,o,M,o],
[o,o,o,M,o,M,M,o,o,o,o],
[o,o,o,o,M,M,M,M,o,o,o],
[o,o,o,M,M,M,M,M,M,M,o],
[o,o,o,M,M,o,M,M,M,o,o],
[o,o,o,o,o,o,M,M,o,o,o],
[o,M,o,o,o,M,o,o,o,o,o],
[o,o,o,o,o,o,o,o,o,o,o]]
def continent_size world, x, y
  if world[y][x] != 'land'
    return 0
  end
size = 1
world[y][x] = 'counted land'

size = size + continent_size(world, x-1, y-1)
size = size + continent_size(world, x , y-1)
size = size + continent_size(world, x+1, y-1)
size = size + continent_size(world, x-1, y )
size = size + continent_size(world, x+1, y )
size = size + continent_size(world, x-1, y+1)
size = size + continent_size(world, x , y+1)
size = size + continent_size(world, x+1, y+1)
size
end

puts continent_size(world, 5, 5)

def english_number number
  if number < 0
    return 'Please enter a number zero or greater.'
end
if number > 100
  return 'Please enter a number 100 or less.'
end
num_string = ''
left = number
write = left/100
left = left - write*100

if write > 0
  return 'one hundred'
end

write = left/10
left = left - write*10

if write > 0
  if write == 1
    if left == 0
      num_string = num_string + 'ten'
    elsif left == 1
      num_string = num_string + 'eleven'
    elsif left == 2
      num_string = num_string + 'twelve'
    elsif left == 3
      num_string = num_string + 'thirteen'
    elsif left == 4
      num_string = num_string + 'fourteen'
    elsif left == 5
      num_string = num_string + 'fifteen'
    elsif left == 6
      num_string = num_string + 'sixteen'
    elsif left == 7
      num_string = num_string + 'seventeen'
    elsif left == 8
      num_string = num_string + 'eighteen'
    elsif left == 9
      num_string = num_string + 'nineteen'
    end
    left = 0
  elsif write == 2
    num_string = num_string + 'twenty'
  elsif write == 3
    num_string = num_string + 'thirty'
  elsif write == 4
    num_string = num_string + 'forty'
  elsif write == 5
    num_string = num_string + 'fifty'
  elsif write == 6
    num_string = num_string + 'sixty'
  elsif write == 7
    num_string = num_string + 'seventy'
  elsif write == 8
    num_string = num_string + 'eighty'
  elsif write == 9
    num_string = num_string + 'ninety'
  end

  if left > 0
    num_string = num_string + '-'
  end
end

write = left
left = 0

if write > 0
  if write == 1
    num_string = num_string + 'one'
  elsif write == 2
    num_string = num_string + 'two'
  elsif write == 3
    num_string = num_string + 'three'
  elsif write == 4
    num_string = num_string + 'four'
  elsif write == 5
    num_string = num_string + 'five'
  elsif write == 6
    num_string = num_string + 'six'
  elsif write == 7
    num_string = num_string + 'seven'
  elsif write == 8
    num_string = num_string + 'eight'
  elsif write == 9
    num_string = num_string + 'nine'
  end
end

if num_string == ''
  return 'zero'
end

num_string
end

def english_number number
  if number < 0 # No negative numbers.
  return 'Please enter a number that isn\'t negative.'
end
if number == 0
  return 'zero'
end

num_string = ''

  ones_place = ['one', 'two', 'three', 'four', 'five', 'six',
'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty',
'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen',
'seventeen' , 'eighteen', 'nineteen']

left = number
write = left/100
left = left - write*100
  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
  if left > 0
    num_string = num_string + ' '
  end
end

write = left/10
left = left - write*10
if write > 0
  if ((write == 1) and (left > 0))
    num_string = num_string + teenagers[left-1]
    left = 0
  else
    num_string = num_string + tens_place[write-1]
  end

  if left > 0
    num_string = num_string + '-'
  end
end

write = left
left = 0

if write > 0
  num_string = num_string + ones_place[write-1]
end
  num_string
end

puts english_number( 0)
puts english_number( 9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(999999)
puts english_number(1000000000000)
