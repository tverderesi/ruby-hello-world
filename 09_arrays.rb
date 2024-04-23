# Arrays
=begin
  Arrays are ordered, integer-indexed collections of any object.
  Array indexing starts at 0, as in C or Java.
  A negative index is assumed to be relative to the end of the array—that is, an index of -1 indicates the last element of the array, -2 is the next to last element in the array, and so on.
  You can create an array by calling Array or a literal constructor.
=end

# Creating Arrays with Literals
array = [1, "Bob", 4.33, "another string", true]
print array

# Creating Arrays with Array.new
names = Array["Bob", "Alice", "John"]
print names

# Accessing Elements
puts array[0]
# Output: 1

puts array[-1]
# Output: true

# Adding Elements
array << "new element"
puts array[-1]
# Output: new element

# Removing Elements
print "Elements 0 and 1 are: #{array[0]}, #{array[1]} \n"
array.delete_at(0)
print "Elements 0 and 1 are: #{array[0]}, #{array[1]}"

# Modifying Elements
puts array[0]
array[0] = "new value"
puts array[0]

# Iterating Over Arrays
array.each do |element|
  print element
end

# Reverse Iteration
array.reverse_each do |element|
  print element
end

# Array Length
puts array.length

# Reverse Array
print array.reverse

# Sorting Arrays
# You can only sort arrays of the same type.
# If you try to sort an array with different types, you will get an error.
print names.sort()
# Output: AliceBobJohn
print array.sort()
# Output: comparison of Float with String failed (ArgumentError)
