# my_roman.rb

def modern_roman(n)
  thous = n/1000
  hunds = n % 1000 / 100
  tens = n % 100 / 10
  ones = n % 10 / 1

roman = 'M' * thous

  if hunds == 9
    roman = roman << 'CM'
  elsif hunds == 4
    roman = roman << 'CD'
  else
    roman = roman << 'D' * (n % 1000 /500)
    roman = roman << 'C' * (n % 500 / 100)
  end

  if tens == 9
    roman = roman << 'XC'
  elsif tens == 4
    roman = roman << 'XL'
  else
    roman = roman << 'L' * (n % 100 /50)
    roman = roman << 'X' * (n % 50 / 10)
  end

  if ones == 9
    roman = roman << 'IX'
  elsif ones == 4
    roman = roman << 'IV'
  else
    roman = roman << 'V' * (n % 10 /5)
    roman = roman << 'I' * ones
  end


puts roman
end

modern_roman(2935)
