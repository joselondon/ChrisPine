# old_school_roman_numerals.rb

def old_roman_num_converter(n)
  if n > 3000 || n < 1
    puts "Please enter a number between 1 and 3000"
    int = gets.chomp.to_i
  else

    int = n.to_i
    original_num = int
    old_roman_num = []
  end

  while int > 0
    old_roman_num = 'M' * (int/1000)
    int = int % 1000
    old_roman_num << ('D' * (int/500))
    int = int % 500
    old_roman_num << ('C' * (int/100))
    int = int % 100
    old_roman_num << ('L' * (int/50))
    int = int % 50
    old_roman_num << ('X' * (int/10))
    int = int % 5
    old_roman_num << ('V' * (int/5))
    int = int % 5
    old_roman_num << 'I' * int
    int = 0
  end
  p  old_roman_num
end


old_roman_num_converter(2351)
puts old_roman_num_converter(0)
old_roman_num_converter(-12)
old_roman_num_converter(4000)
