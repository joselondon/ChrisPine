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
    roman = roman << 'I' * (n % 5)
  end

puts roman
end

modern_roman(1)
modern_roman(2)
modern_roman(4)
modern_roman(5)
modern_roman(8)
modern_roman(9)
modern_roman(10)
modern_roman(14)
modern_roman(18)
modern_roman(19)
modern_roman(20)
modern_roman(40)
modern_roman(50)
modern_roman(90)
modern_roman(100)
modern_roman(219)
modern_roman(249)
modern_roman(250)
modern_roman(280)
modern_roman(290)
modern_roman(490)
modern_roman(500)
modern_roman(991)
modern_roman(994)
modern_roman(998)
modern_roman(999)
modern_roman(1000)
modern_roman(1001)
modern_roman(1005)
modern_roman(1004)
modern_roman(1008)
modern_roman(1009)
modern_roman(1010)
modern_roman(1049)
modern_roman(1050)
modern_roman(1999)
modern_roman(2000)
modern_roman(999999)
