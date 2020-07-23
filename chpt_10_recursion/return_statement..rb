# return_statement.rb
# a brief method to understand the effect of
# an explicit return statement in Ruby method

def return_statement(num)
  puts "this is before the explicit return..."
  if num != 1
    return "yeah you entered something other than 1 !"
  end
  puts "this is after explicit return so you must have entered 1!"
end

puts return_statement(1)
puts ""
puts return_statement(2)
