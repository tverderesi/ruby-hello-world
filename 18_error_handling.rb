# Error Handling
# Ruby has a built-in error handling mechanism called exception handling.
# You can use the begin, rescue, and end keywords to handle exceptions in your code.

# Example
# In the following example, we attempt to read a file that does not exist. This will raise an exception, which we can
# catch using a rescue block.

def read_file
  begin
    print "Enter a file name: "
    file_name = gets.chomp
    file_contents = File.read(file_name)
    puts file_contents
  rescue Errno::ENOENT
    puts "File not found: #{file_name}"
    retry
  end
end

# You can also raise your own exceptions using the raise keyword. This can be useful for handling custom error cases in
# your code.

# Example
# In the following example, we raise an exception if the user tries to feed the bot the wrong food.

def feed_bot
  begin
    print "Feed the bot: "
    food = gets.chomp
    puts "Feeding bot #{food}... 🤖🍽️"
    sleep 1
    raise "Error: The bot does not want #{food}" unless food == "nuts"
    puts "Yum! The bot is happy! 🤖🥜"
    sleep 0.5
    puts "Goodbye! 🤖👋"
  rescue => e
    puts e.message
    retry
  end
end

def main
  puts "Choose a code snippet to run:"
  puts "1. Read a file"
  puts "2. Feed the bot"
  puts "3. Exit"
  print "Enter your choice: "
  choice = gets.chomp.to_i
  begin
    case choice
    when 1
      read_file
    when 2
      feed_bot
    when 3
      puts "Goodbye!"
      exit
    else
      raise "Invalid choice"
    end
  rescue => e
    puts e.message
    retry
  end
end

main
