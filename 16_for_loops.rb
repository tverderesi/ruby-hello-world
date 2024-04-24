# For Loops
# A for loop is used to iterate over a collection of elements.

friends = ["Kevin", "Karen", "Oscar", "Angela", "Andy"]
puts "For Loop"
for friend in friends
  puts friend
end
# Output: Kevin
#         Karen
#         Oscar
#         Angela
#         Andy

# The for loop is used to iterate over the friends array. The friend variable is assigned to each element in the array,
# one at a time, and the puts method is called to output the value of the friend variable.
# The for loop is a simple way to iterate over a collection of elements, but it is not as flexible as the each method,
# because it does not provide access to the index of the element being iterated over.
# The each method is more commonly used in Ruby to iterate over collections, but the for loop can be useful in
# certain situations, especially when you want to iterate over a collection of elements without needing to access
# the index.

# Each method
puts "Each Method"
friends.each do |friend|
  puts friend
end

# Each with index
puts "Each with index"
friends.each_with_index do |friend, index|
print "Index: #{index}, Friend: #{friend}\n"
end

# Looping through a range of numbers
puts "Looping through a range of numbers"
(0..5).each do |i|
  puts i
end

# Looping through a range of numbers using the times method
puts "Looping through a range of numbers using the times method"
6.times do |index|
  puts index
end
