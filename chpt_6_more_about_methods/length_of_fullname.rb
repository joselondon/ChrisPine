# length_of_fullname.rb
puts "Welcome to the name length calculator..."
puts ""

puts "Please enter your given name"
given_name = gets.chomp

puts "Please enter your middle name"
middle_name = gets.chomp

puts "Please enter your surname"
surname = gets.chomp

concat_length = (given_name + middle_name + surname).length.to_s

puts "Thank you..."
puts "Your name is " + concat_length + " characters long"
