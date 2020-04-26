# 99_bottles.rb

number_of_bottles = 99

while true
  puts "#{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer."
  number_of_bottles -= 1
    if number_of_bottles < 2
      break
    end
  puts "Take one down, pass it around, #{number_of_bottles} bottles of beer on the wall..."
  puts
end

puts "Take one down, pass it around, 1 more bottle of beer on the wall..."
puts

puts "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall..."
