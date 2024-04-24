# While Loops
# while loop is used to execute a block of code multiple times, while a condition is met.
# Example:

def count_down(number)
  while number > 0
    puts number
    number -= 1
    sleep(0.75)
  end
  puts "Blast off!"
end

puts "count_down:"
count_down(5)
