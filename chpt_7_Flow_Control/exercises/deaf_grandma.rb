# deaf_grandma.rb
puts "Say something to grandma"

while true
  input = gets.chomp
  if input == 'BYE!'
    break
  end
  puts "HUH?! SPEAK UP, SONNY!"
end

puts "NO, NOT SINCE #{rand(1930..1951)}!"
