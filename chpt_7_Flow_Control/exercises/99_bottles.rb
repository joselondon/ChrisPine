# 99_bottles.rb

number_of_bottles = 99

while number_of_bottles > 1
puts "#{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer.
Take one down, pass it around, #{number_of_bottles - 1} bottles of beer on the wall..."
puts
number_of_bottles -= 1
end
puts
puts "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall..."
