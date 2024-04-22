# Variables
# Variables are used to store data, such as numbers or strings.
# Example:

# Define a variable named 'name' and assign it the value "John"
name = "John"
puts "Hello, my name is #{name}"
name = "Jane"
puts "Hello, my name is #{name}"

# Clear the variable 'name'
name = nil
puts "Hello, my name is #{name}"

# Output:
# Hello, my name is John
# Hello, my name is Jane

# Define a variable named 'age' and assign it the value 25
name = "John"
age = 25
puts "Hello, my name is #{name} and I am #{age} years old."
name = "Jane"
age = 30
puts "Hello, my name is #{name} and I am #{age} years old."

# Output:
# Hello, my name is John and I am 25 years old
# Hello, my name is Jane and I am 30 years old

#You can also perform operations on variables:
# Define a variable named 'x' and assign it the value 5
x = 5
# Define a variable named 'y' and assign it the value 10
y = 10

# Add the values of 'x' and 'y' and store the result in a new variable named 'sum'
sum = x + y
puts "The sum of #{x} and #{y} is #{sum}"

# Output:
# The sum of 5 and 10 is 15

#Doing operations with strings

# Define a variable named 'first_name' and assign it the value "John"
first_name = "John"
# Define a variable named 'last_name' and assign it the value "Doe"
last_name = "Doe"

# Concatenate the values of 'first_name' and 'last_name' and store the result in a new variable named 'full_name'
full_name = first_name + " " + last_name

puts "My full name is #{full_name}"

# Differently from Javascript, Ruby defines a const variable using UPPERCASE letters.
# Defining a Name constant:

NAME = "John"
puts "My name is #{NAME}"

# Output:
# My name is John

#Trying to change the value of a constant will raise an error:
NAME = "Jane"
puts "My name is #{NAME}"

# Output:
# variables.rb:62 warning: already initialized constant NAME
# variables.rb:55: warning: previous definition of NAME was here
