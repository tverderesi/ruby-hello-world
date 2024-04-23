# Simple Number Operations
a = 10
b = 2.5
c = -3

puts "Numbers"
puts "#{a}, #{b}, #{c}"
puts "Addition"
puts a + b + c
puts "Subtraction"
puts a - b - c
puts "Multiplication"
puts a * b * c
puts "Division"
puts a / b / c
puts "Exponentiation"
puts a ** b
puts "Remainder"
puts a % b
puts "Absolute Value"
puts c.abs

# Printing numbers with strings
puts "The sum of #{a} and #{b} is #{a + b}."

# Converting numbers to strings
puts "The sum of " + a.to_s + " and " + b.to_s + " is " + (a + b).to_s + "."

# Converting strings to numbers
puts "The sum of 10 and 2.5 is " + (10 + 2.5).to_s + "."

# Rounding numbers
puts "The rounded value of 2.5 is #{2.5.round}."

# Random numbers
puts "Random number between 0 and 100: #{rand(100)}."

#Math Module

# Constants
puts "Pi: #{Math::PI}"

# Trigonometric functions
angle = 45
puts "Sine of #{angle} degrees: #{Math.sin(angle * Math::PI / 180)}"
puts "Cosine of #{angle} degrees: #{Math.cos(angle * Math::PI / 180)}"

# Square root
puts "Square root of 16: #{Math.sqrt(16)}"

# Logarithm
puts "Natural logarithm of 10: #{Math.log(10)}"
puts "Log of 9 in base 3: #{Math.log(9, 3)}"

# Exponential
puts "e raised to the power of 2: #{Math.exp(2)}"
# Ceiling and floor
=begin
In Ruby ceil and floor methods are available are instance of the Float class, instead of being class methods in the
Math module, such as is in JavaScript.
=end
puts "Ceiling of 2.5: #{2.5.ceil}"
puts "Floor of 2.5: #{2.5.floor}"

=begin
What seems cool is that Ruby seems to have better support for mathematical operations than JavaScript.
- Thomas (2024/04/22)
=end
