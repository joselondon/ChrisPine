# deaf_grandma_extended.rb
require 'pry'
puts "Say something to grandma"
bye_counter = 0

while bye_counter < 3
  input = gets.chomp
  if input == 'BYE!'
    bye_counter += 1
  else
    bye_counter = 0
  end
  if bye_counter == 3
    break
  end
    puts "HUH?! SPEAK UP, SONNY!"
end

puts "NO, NOT SINCE #{rand(1930..1951)}!"
#  I think the author was looking for year =rand(21) + 20 I prefer my solution!
