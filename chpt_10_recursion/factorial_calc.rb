# factorial_calc.rb

def factorial(num)
  if num < 0
    puts "You cannot calculate a factorial from a negative number"
  end

  if num <= 1
    1
  else
    num * factorial(num-1)
  end
end

puts factorial(3)
puts factorial(30)

# I get it so far after drawing out the resulting processes on paper!
