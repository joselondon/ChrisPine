# my_roman.rb

def modern_roman(n)
  thous = n/1000
  hunds = n % 1000 / 100
  tens = n % 100 / 10
  ones = n % 10 / 1
end

puts modern_roman(1311)
