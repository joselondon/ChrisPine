# deaf_grandma.rb
puts "Say something to grandma"

while true
  input = gets.chomp
  if input == input.upcase
    break
  end
  puts "HUH?! SPEAK UP, SONNY!"
end

puts "NO, NOT SINCE 1938!"
