# bigger_better_favourite_number.rb

puts "What is your favourite number?"
number_as_str = gets.chomp
bigger_number_as_int = number_as_str.to_i + 1

puts "Ok that is great but my number " + bigger_number_as_int.to_s  +
" is bigger and better than yours!"
