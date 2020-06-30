# my_roman.rb

def modern_roman(n)
  thous = n/1000
  hunds = n % 1000 / 100
  tens = n % 100 / 10
  ones = n % 10 / 1

roman = 'M' * thous

  if hunds == 9
    roman = roman + 'CM'
  elsif hunds == 5
    roman = roman + 'D'
  elsif hunds == 4
    roman = roman + 'CD'
  else
    roman = roman + ('C' * hunds)
  end

puts hunds
puts roman
end

modern_roman(1700)
