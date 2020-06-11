# modern_roman_numerals.rb
# book solution

def roman_numeral(num)
  thous = num/1000
  hunds = (num % 1000 / 100)
  tens = (num % 100 / 10)
  ones = (num % 10)

  roman = 'M' * thous
puts hunds
  if hunds == 9
    roman << 'CM'
  elsif hunds == 4
    roman << 'CD'
  elsif hunds == 5
    roman << 'D'
  else
    roman = roman + 'D' * (num % 1000 / 500)
    roman = roman + 'C' * (num % 500 / 100)
  end

end

puts roman_numeral(3400)
