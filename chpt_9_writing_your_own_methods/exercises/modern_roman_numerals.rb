# modern_roman_numerals.rb

def modern_roman_numeral_generator(n)
  if n > 3000 || n < 1
    puts "Please enter a number between 1 and 3000"
    int = gets.chomp.to_i
  else
    int = n.to_i
    new_roman_num = []
  end

  while int > 0
    new_roman_num = 'M' * (int/1000)
    int = int % 1000
    if int % 500 == 400
      new_roman_num << 'C'
    end
    new_roman_num << 'D' * (int/500)
    int = int % 500
    # line 21 just a hold to remove the excess 100s until program is completed
    int = int - 400
  end
  puts new_roman_num
end

puts modern_roman_numeral_generator(1900)
