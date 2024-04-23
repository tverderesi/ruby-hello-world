# Return Types
# Methods can return values. The return value is the value that the method evaluates to.

# Methods can return values of any type.
# Example:
def add(a, b)
  return a + b
end

result = add(5, 3)
puts result
# Output: 8
# The return keyword is optional. If you omit it, the method will return the value of the last expression evaluated.

# Example:
def another_add(a, b)
  a + b
end

another_result = another_add(5, 3)
puts another_result
# Output: 8

# Methods can return multiple values by returning an array or a hash.

# Example:
def multiple_values
  return 1, 2, 3
end

result1, result2, result3 = multiple_values
puts result1, result2, result3
