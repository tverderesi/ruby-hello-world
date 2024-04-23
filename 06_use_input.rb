# User Input
=begin
In Ruby, the gets method is used to get input from the user. The gets method reads a line from the standard input and
returns it as a string. The chomp method is used to remove the newline character at the end of the string.
=end

puts "Enter your name:"
name = gets.chomp
puts "Hello, #{name}!"

puts "Enter your age:"
age = gets.chomp
puts "You are #{age} years old."

=begin
The gets method reads the input from the user as a string. If you want to convert the input to a number, you can use the
to_i method to convert the string to an integer, or the to_f method to convert the string to a float.
=end

puts "Enter a number:"
number = gets.chomp.to_i
puts "The square of #{number} is #{number ** 2}."
puts "The square root of #{number} is #{Math.sqrt(number)}."
puts "The cube of #{number} is #{number ** 3}."
