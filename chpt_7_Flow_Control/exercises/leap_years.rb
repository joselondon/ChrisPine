# leap_years.rb

puts "Welcome to the Leap Years calculator"
puts "Please enter your start year"

start_year = gets.chomp.to_i

puts "Now please enter your end year"
end_year = gets.chomp.to_i

puts

year_count = end_year

while year_count >= start_year
  if year_count % 400 == 0
    puts year_count
  end
  if year_count % 4 == 0 && year_count % 100 != 0
    puts year_count
  end
year_count -= 1
end
