# Methods

# Methods are defined using the def keyword. The method name should start with a lowercase letter.
# The method name can be followed by a list of parameters in parentheses.
# The method body is enclosed in a block (between def and end).
# The method can return a value using the return keyword.
# The return keyword is optional.
# If the return keyword is not used, the method will return the last statement in the block.
# Example:
def say_hello
  puts "Hello, World!"
  return 10
end

say_hello

# Putting the return keyword at the end of the method is optional. The method will return the last statement in the block.

say_hello # does not output 10.

puts say_hello # outputs 10.

# Output:
# Hello, World!

# Example:
def say_hello_to(name)
  puts "Hello, #{name}!"
end

say_hello_to("John")
say_hello_to("Jane")

# Output:
# Hello, John!
# Hello, Jane!

# Example:
def add(a, b)
  return a + b
end

result = add(5, 3)
puts result

# Output:
# 8

# Example:
def add(a, b)
  a + b
end

result = add(5, 3)
puts result

# Output:
# 8

# Example:
def add(a, b)
  a + b
end

puts add(5, 3)

# Output:
# 8

# Example:
def add(a, b)
  a + b
end

puts add(5, 3) + add(2, 4)

# Output:
# 14

# Example:
def add(a, b)
  a + b
end

puts add(add(5, 3), add(2, 4))

# Output:
# 14

# Example:
def add(a, b)
  a + b
end

# Methods can be called inside other methods. This is known as method chaining.
puts add(add(add(1, 2), add(3, 4)), add(add(5, 6), add(7, 8)))

# Output:
# 36

# Example:
def add(a, b)
  a + b
end

def multiply(a, b)
  a * b
end

puts add(multiply(2, 3), multiply(4, 5))

# Output:
# 26

# Example:
def add(a, b)
  a + b
end

def multiply(a, b)
  a * b
end

puts multiply(add(2, 3), add(4, 5))

# Output:
# 45

# Methods can have default parameters.
# Example:
def say_hello_again(name = "World")
  puts "Hello, #{name}!"
end

say_hello_again
say_hello_again("John")
