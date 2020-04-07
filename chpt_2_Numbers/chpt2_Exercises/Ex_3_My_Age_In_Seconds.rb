# Ex_3_My_Age_In_Seconds.rb

puts "How old are you in years?"
years = gets.chomp.to_i

puts "Your age in seconds is approximately: #{(((years * 365)  * 24) * 60) * 60}"
