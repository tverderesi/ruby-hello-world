# Hash

# A Hash is a collection of key-value pairs. It is similar to an array, except that indexing is done via keys of any
# object type, not an integer index.
# Hashes enumerate their values in the order that the corresponding keys were inserted.
# Hashes have a default value that is returned when accessing keys that do not exist in the hash.
# By default, that value is nil.
# You can create a hash by calling Hash or a literal constructor.
# Hashes in Ruby are similar to Dictionaries in Python.
# Performance-wise, hashes are faster than arrays for accessing elements by key than Arrays.

# Creating Hashes with Hash.new
hash = {}
hash["name"] = "Bob"
hash["age"] = 25

print hash

# Creating Hashes with a Literal Constructor
other_hash = {
  "name" => "Alice",
  "age" => 30,
}

print other_hash
# Output: {"name"=>"Alice", "age"=>30}
# Use colon (:) for symbols
symbol_hash = {
  :name => "Alice",
  :age => 30,
}

print symbol_hash

# Use symbols as keys
symbol_hash = {
  name: "Alice",
  age: 30,
}

print symbol_hash

# Output: {:name=>"Alice", :age=>30}

# Accessing Elements
puts hash["name"]
# Output: Bob

puts hash["age"]
# Output: 25

# Adding Elements
hash.store("email", "bob@email.com")
puts hash["email"]

other_hash["email"] = "alice@email.com"
puts other_hash["email"]

# Modifying Elements
puts hash["name"]
hash["name"] = "Bobby"
puts hash["name"]

# Removing Elements
print "Name: #{hash["name"]}, Age: #{hash["age"]}, Email: #{hash["email"]} \n"
hash.delete("email")
print "Name: #{hash["name"]}, Age: #{hash["age"]}, Email: #{hash["email"]}"

# Immutable Hashes
# You can create an immutable hash by calling freeze on the hash.
hash.freeze
hash["name"] = "Bobby" # This will raise a RuntimeError
