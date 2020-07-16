# recursive_psych_test.rb

def ask_recursively(question)
  puts question
  reply = gets.chomp
  if reply == "yes"
    true
  elsif reply == "no"
    false
  else
    puts "Please answer 'yes' or 'no'"
    ask_recursively(question)
  end
end

ask_recursively("Do you wet the bed")
