alpha = Array.new + [12345]
beta = String.new + 'hello'
karma = Time.new
puts "alpha = #{alpha}"
puts "beta = #{beta}"
puts "karma = #{karma}"

time = Time.new
time2 = time + 60
puts time
puts time2

puts Time.local(2000, 1, 1)
puts Time.local(1976, 8, 3, 13, 31)

puts Time.gm(1955, 11, 5)

dict_array = []
dict_hash = {}
dict_array[0] = 'candle'
dict_array[1] = 'glasses'
dict_array[2] = 'truck'
dict_array[3] = 'Alicia'
dict_hash['shia-a'] = 'candle'
dict_hash['shaya' ] = 'glasses'
dict_hash['shasha'] = 'truck'
dict_hash['sh-sha'] = 'Alicia'
dict_array.each do |word|
  puts word
end

dict_hash.each do |c_word, word|
  puts "#{c_word}: #{word}"
end

weird_hash = Hash.new
weird_hash[12] = 'monkeys'
weird_hash[[]] = 'emptiness'
weird_hash[Time.new] = 'no time like the present'

letters = 'a'..'c'
puts(['a','b','c'] == letters.to_a)
('A'..'Z').each do |letter|
  print letter
end
puts
god_bless_the_70s = 1970..1979
puts god_bless_the_70s.min
puts god_bless_the_70s.max
puts(god_bless_the_70s.include?(1979 ))
puts(god_bless_the_70s.include?(1980 ))
puts(god_bless_the_70s.include?(1974.5))

da_man = 'Mr. T'
big_T = da_man[4]
puts big_T
puts ?T
puts 84.chr

puts "Hello. My name is Julian."
puts "I'm extremely perceptive."
puts "What's your name?"
name = gets.chomp
puts "Hi, #{name}."
if name[0] == ?C
  puts 'You have excellent taste in footwear.'
  puts 'I can just tell.'
end

puts(42.class)
puts("I'll have mayonnaise on mine!".class)
puts(Time.new.class)
puts(Time.class)
puts(String.class)
puts(Class.class)
