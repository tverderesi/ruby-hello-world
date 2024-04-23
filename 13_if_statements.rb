# If Statements
# If statements are used to execute code based on a condition. If the condition is true,
# the code block inside the if statement is executed. If the condition is false, the code block is skipped.
# You can also use elsif and else to chain if conditions.
# Example:

test_odd_even = [2, 3, 4, 5]

def is_even(number)
  if number % 2 == 0
    return true
  else
    return false
  end
end

puts "is_even:"
test_odd_even.each do |t|
  puts "#{t} is even => #{is_even(t)}"
end

# You can also use the unless keyword to execute code when a condition is false.
# Example:

def is_odd(number)
  unless number % 2 == 0
    return true
  else
    return false
  end
end

puts "is_odd:"
test_odd_even.each do |t|
  puts "#{t} is odd => #{is_odd(t)}"
end

# You can also use the ternary operator to write if statements in a single line.
#Example:
def another_odd(number)
  number % 2 == 0 ? false : true
end

puts "another_odd:"
test_odd_even.each do |t|
  puts "#{t} is odd => #{another_odd(t)}"
end

# Multiple Conditions on a single if
# You can use the and and or operators to combine multiple conditions in a single if statement.
# Or you can use the && and || operators to combine multiple conditions in a single if statement.
# 'or' and '||' are equivalent, and 'and' and '&&' are equivalent.
# 'or  if any of the conditions are true, the code block is executed.
# 'and' if all the conditions are true, the code block is executed.
# Example:
def is_positive_and_even(number)
  if number > 0 and number % 2 == 0
    return true
  else
    return false
  end
end

puts "is_positive_and_even:"
test = [2, 3, -2, -3]
test.each do |t|
  puts "#{t} is positive and even => #{is_positive_and_even(t)}"
end

# You can also use the or operator to write if statements with multiple conditions.
#Example:

def is_positive_or_even(number)
  if number > 0 or number % 2 == 0
    return true
  else
    return false
  end
end

puts "is_positive_or_even:"
test.each do |t|
  puts "#{t} is positive or even => #{is_positive_or_even(t)}"
end

# You can also use the case statement to write if-else chains in a more readable way.
#Example
def is_positive(number)
  case
  when number > 0
    return true
  when number < 0
    return false
  else
    return "zero"
  end
end

test_is_positive = [5, -5, 0]
puts "is_positive:"
test_is_positive.each do |t|
  puts "#{t} is positive => #{is_positive(t)}"
end

# Comparison Operators
# Comparison operators are used to compare two values. They return a boolean value (true or false).
# The comparison operators are:
# == equal to
# != not equal to
# > greater than
# < less than
# >= greater than or equal to
# <= less than or equal to
# Example:
def compare(a, b)
  if a == b
    return "equal"
  else a != b
    return "not equal"   end
end

test_compare = [[5, 5], [5, 3], [3, 5], [3, 3]]
puts "compare:"
test_compare.each do |t|
  puts "#{t[0]} and #{t[1]} are #{compare(t[0], t[1])}"
end

def greater_than(a, b)
  if a > b
    return "greater"
  else
    return "not greater"
  end
end

puts "greater_than:"
test_compare.each do |t|
  puts "#{t[0]} is #{greater_than(t[0], t[1])} than #{t[1]}"
end

def less_than(a, b)
  if a < b
    return "less"
  else
    return "not less"
  end
end

puts "less_than:"
test_compare.each do |t|
  puts "#{t[0]} is #{less_than(t[0], t[1])} than #{t[1]}"
end

def max(a, b, c)
  if a >= b and a >= c
    return a
  elsif b >= a and b >= c
    return b
  else
    return c
  end
end

test_max = [[5, 3, 4], [2349293029, 523213321, 421309093210329], [213984241, 124390241924042, 2130910932213]]
puts "max:"
test_max.each do |t|
  puts "The max of #{t[0]}, #{t[1]}, and #{t[2]} is #{max(t[0], t[1], t[2])}"
end

# You can also use the spaceship operator <=> to compare two values.
# The spaceship operator returns -1 if the first value is less than the second value,
# 0 if the first value is equal to the second value, and 1 if the first value is greater than the second value.

def spaceship(a, b)
  return a <=> b
end

test_spaceship = [[5, 5], [5, 3], [3, 5], [3, 3]]
test_spaceship_string = [["apple", "apple"], ["apple", "banana"], ["banana", "apple"], ["banana", "banana"]]
puts "spaceship:"
test_spaceship.each do |t|
  puts "#{t[0]} <=> #{t[1]} is #{spaceship(t[0], t[1])}"
end

puts "spaceship_string:"
test_spaceship_string.each do |t|
  puts "#{t[0]} <=> #{t[1]} is #{spaceship(t[0], t[1])}"
end
