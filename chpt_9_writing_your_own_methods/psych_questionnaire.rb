# psych_questionnaire.rb

puts "Hello, and thatnk you for taking the time to"
puts "help me with this experiment.  My experiment"
puts "has to do with the way people feel about"
puts "Mexican food.  Just think about Mexican food"
puts "and try to answer every question hinestly."
puts "with either a 'yes' or a 'no'.  My experiement"
puts "has nothing to do with bed-wetting."
# We ask these questions but we ignore their answers
while true
  puts "Do you like eating tacos?"
  answer = gets.chomp.downcase
  if (answer == 'yes'  || answer == 'no')
    break
  else
    puts "Please answer 'yes' or 'no'."
  end
end

while true
  puts "Do you like eating burritos?"
  answer = gets.chomp.downcase
  if (answer == 'yes'  || answer == 'no')
    break
  else
    puts "Please answer 'yes' or 'no'."
  end
end

# We do pay attention to this answer though.
while true
  puts "Do you wet the bed?"
  answer = gets.chomp.downcase
  if (answer == 'yes' || answer == 'no')
    if answer == 'yes'
      wets_bed = true
    else
      wets_bed = false
    end
    break
  else
    puts "Please answer 'yes' or 'no'"
  end
end

while true
  puts "Do you like eating chimichangas?"
  answer = gets.chomp.downcase
  if (answer == 'yes'  || answer == 'no')
    break
  else
    puts "Please answer 'yes' or 'no'."
  end
end

while true
  puts "Do you like eating sopapillas?"
  answer = gets.chomp.downcase
  if (answer == 'yes'  || answer == 'no')
    break
  else
    puts "Please answer 'yes' or 'no'."
  end
end

# Ask lots of other questions about Mexican food
