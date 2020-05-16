# old_school_roman_numerals.rb

puts "Welome to the old school roman numeral converter."
puts "Please enter an integer from 0 to 3000..."

int = gets.chomp.to_i
old_roman_num = ""

if int/1000 > 0
  old_roman_num = 'M' * (int/1000)
else
  puts "meh"
end

puts "#{int} as an old school roman numberal is:  #{old_roman_num}"
