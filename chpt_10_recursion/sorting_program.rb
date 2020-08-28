#sorting_program.rb

=begin
list = []

puts "Welcome to the word sorting program. Please enter your words one at "
puts "a time each on a separate line.  When you are done just hit <ENTER>"
puts "on an empty line.  The program will then sort your words."

word = gets.chomp

list << word

puts list
=end

#########################################################



puts "Welcome to the word sorting program. Please enter your words one at "
puts "a time each on a separate line.  When you are done just hit <ENTER>"
puts "on an empty line.  The program will then sort your words."

list = []
word = gets.chomp

while word != ""
  list << word
  word = gets.chomp
end

puts list
