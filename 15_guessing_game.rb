# Guessing Game

def game_setup
  puts "Welcome to the guessing game! Choose how many numbers you'd like to guess between:"
  begin
    print "Enter a number: "
    max_number = gets.chomp.to_i
    random_number = rand(1..max_number)
  rescue
    puts "Please enter a valid number."
    retry
  end
  puts "You have chosen to guess between 1 and #{max_number}."
  puts "Choose how many guesses you'd like to have: "
  begin
    print "Enter guesses:"
    max_guesses = gets.chomp.to_i
    valid_guess = max_guesses > 0 && max_guesses < max_number / 2
    unless valid_guess then raise end
  rescue
    puts "Please enter a valid number of guesses. Guesses must be greater than 0 and less than half the range of
    numbers."
    retry
  end
  puts "You have chosen to have #{max_guesses} guesses."
  return max_guesses, max_number, random_number
end

def game_play(max_number, max_guesses, random_number, guesses)
  puts "I have a random number between 1 and #{max_number}."
  puts "Can you guess it?"
  print "Enter your guess and press 'Enter': "
  while guesses <= max_guesses
    puts "Guesses left: #{max_guesses - guesses} \n"
    guess = gets.chomp.to_i
    guesses += 1
    if guess == random_number
      puts "Congratulations! You've guessed the correct number in #{guesses} guesses!"
      break
    else
      begin
        if guess > random_number
          puts "Too high! Try again."
        elsif guess < random_number
          puts "Too low! Try again."
        end
      rescue
        puts "Please enter a valid number."
        retry
      end
    end
  end
end

def play_again
  puts "Would you like to play again? (y/n)"
  play_again = gets.chomp
  if play_again == "y"
    return true
  elsif play_again == "n"
    puts "Thanks for playing! Goodbye!"
    return false
  else
    puts "Please enter 'y' or 'n'."
    play_again
  end
end

def game_loop
  keep_playing = true
  while keep_playing
    guesses = 0

    max_guesses, max_number, random_number = game_setup

    game_play(max_number, max_guesses, random_number, guesses)
    keep_playing = play_again
  end
end

game_loop
