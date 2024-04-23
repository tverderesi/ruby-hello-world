# Escaping Strings
=begin
You can use the backslash character \ to escape special characters in a string. For example, if you want to include a double quote in a string, you can escape it with a backslash like this:
=end
puts "\"Hello, World!\""

# Newline
=begin
The newline character \n is used to create a new line in a string. For example:
=end
puts "Hello,\nWorld!"

# Variable Container
=begin
You can use the variable container #{} to insert the value of a variable into a string. For example:
=end
name = "Jane"
puts "Hello, my name is #{name}."

# String Methods
=begin
Ruby provides many built-in methods for working with strings. Here are some common string methods:
=end

# Length
=begin
The length method returns the number of characters in a string. For example:
=end

name = "Jane"
puts "My name has #{name.length} characters."

# Uppercase
=begin
The upcase method converts a string to uppercase. For example:
=end

name = "Jane"
puts "My name in uppercase is #{name.upcase}."

# Lowercase
=begin
The downcase method converts a string to lowercase. For example:
=end

name = "Jane"
puts "My name in lowercase is #{name.downcase}."

# Strip
=begin
The strip method removes leading and trailing whitespace from a string. For example:
=end
name = "                           Jane                   "
puts "My name with leading and trailing whitespace is #{name}."
puts "My name without leading or trailing whitespace is #{name.strip}."

# Split
=begin
The split method splits a string into an array of substrings based on a delimiter. For example:
=end

name = "Jane Doe"
puts "My first name is #{name.split(" ")[0]}."
puts "My last name is #{name.split(" ")[1]}."
puts "My full name is #{name}."

# Substring
=begin
The slice method returns a substring of a string. For example:
=end

name = "Jane Doe"
puts "The first three characters of my name are #{name.slice(0, 3)}."
puts "The last three characters of my name are #{name.slice(-4, 3)}."

# Include
=begin
The include? method checks if a string contains a substring. For example:
=end

name = "Jane Doe"
puts "My name includes the substring 'Doe': #{name.include?("Doe")}."
puts "My name includes the substring 'Smith': #{name.include?("Smith")}."

# Replace
=begin
The gsub method replaces all occurrences of a substring in a string. For example:
=end

name = "Jane Doe"
puts "My name is #{name}."
puts "My name with 'Doe' replaced by 'Smith' is #{name.gsub("Doe", "Smith")}."

# Find Index
=begin
The index method returns the index of the first occurrence of a substring in a string. For example:
=end

name = "Jane Doe Doe Doe Doe"
puts "The index of the first occurrence of 'Doe' in my name (#{name}) is #{name.index("Doe")}."

# Access Index of String
=begin
You can access individual characters in a string by their index. For example:
=end

name = "Jane"
puts "The first character of my name is #{name[0]}."
puts "The last character of my name is #{name[-1]}."

# Using Substrings via Index
=begin
You can use the slice method to extract a substring from a string by specifying a range of indices. For example:
=end

name = "Jane Doe"
puts "The first three characters of my name are #{name[0, 3]}."

# if you use .. can include the value

puts "The first three characters of my name are #{name[0..2]}."
