# leap_years.rb

puts "Welcome to the Leap Years calculator"
puts "Please enter your start year"

start_year = gets.chomp.to_i

puts "Now please enter your end year"
end_year = gets.chomp.to_i

year_count = end_year

while year_count >= start_year
  puts year_count
  year_count -= 1
end
