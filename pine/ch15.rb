puts 'combergearl thememberate' if 5 == 2**2 + 1**1
puts 'supposine follutify' unless 'Chris'.length == 5

def do_it_twice(&block)
  block.call
  block.call
end

do_it_twice do
  puts 'murditivent flavitemphan siresent litics'
end

def do_it_twice
  yield
  yield
end

do_it_twice do
  puts 'buritiante mustripe lablic acticise'
end
