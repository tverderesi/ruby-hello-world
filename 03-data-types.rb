# Data Types
# Ruby has a rich set of built-in types, including:


# Strings
name = "Jane"
puts "Hello, my name is #{name}."
# Output:
# Hello, my name is Jane

# Integers
age = 30
puts "I am #{age} years old."
# Output:
# I am 30 years old.

# Floating point numbers
height = 1.75
puts "I am #{height} meters tall."
# Output:
# I am 1.75 meters tall.

# Booleans
isAdult = true
if isAdult
  puts "I am an adult."
else
  puts "I am not an adult."
end
# Output:
# I am an adult.

isAdult = false
if isAdult
  puts "I am an adult."
else
  puts "I am not an adult."
end
# Output:
# I am not an adult.

# Nil (null in other languages)
name = nil
puts "Hello, my name is #{name}"
# Output:
# Hello, my name is

# Arrays
fruits = ["apple", "banana", "orange"]
puts "I like #{fruits[0]}, #{fruits[1]} and #{fruits[2]}."
# Output:
# I like apple, banana and orange.

# Hashes
=begin
A Hash is a dictionary-like collection of unique keys and their values. Also called associative arrays,
they are similar to Arrays, but where an Array uses integers as its index, a Hash allows you to use any object type.
=end

person = {
  "name" => "John",
  "age" => 25
}
puts "My name is #{person["name"]} and I am #{person["age"]} years old."

# Output:
# My name is John and I am 25 years old.
