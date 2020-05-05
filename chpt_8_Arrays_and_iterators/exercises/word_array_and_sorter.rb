# word_array_and_sorter.rb

puts "Please enter your first word for the sorter"
word = gets.chomp
arr = []

while word != ""
  arr.push(word.to_s)
  puts "Thanks, now another..."
  word = gets.chomp
end

puts arr.sort.to_s
