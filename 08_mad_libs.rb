# frozen_string_literal: true

# Mad Libs Game

should_run = true

def main
  puts "Welcome to Mad Libs!"

  prompts = ["Number", "Unit of time", "Mode of transportation", "Adjective",

             "Adjective", "Noun", "Colour", "Part of the body (plural)", "Verb", "Number", "Noun", "Noun", "Part of the body",

             "Verb", "Plural Noun", "Adjective", "Silly Word", "Noun"]

  words = []

  prompts.each do |prompt|
    print "Enter a/an #{prompt}: "

    words << gets.chomp
  end

  puts "It was about #{words[0]} #{words[1]} ago when I came to the hospital in a #{words[2]}.
  The hospital is a/an #{words[3]} place, there are a lot of #{words[4]} #{words[5]} here.
  There are nurses here who have #{words[6]} #{words[7]}. If someone wants to come into my room
  I told them that they have to #{words[8]} first. I have decorated my room with #{words[9]}
  #{words[10]}. Today a doctor came into my room and they were wearing a #{words[11]} on their
  #{words[12]}. I heard that all doctors #{words[13]} #{words[14]} every day for breakfast. The
  most #{words[15]} thing about being in the hospital is the #{words[16]} #{words[17]}!"

  puts "Thank you for playing Mad Libs!"

  puts "Start over? (y/n)"

  response = gets.chomp

  if response == "y"
    main()
  elsif response == "n"
    puts "Goodbye!"
    should_run = false
    exit
  else
    puts "Invalid response."
  end
end

while should_run
  main()
end
