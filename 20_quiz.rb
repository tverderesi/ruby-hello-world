# Quiz
# In this code, we are going to build a quiz program. The program will have a Question class and a Quiz class. The Question
# class will have a prompt attribute and an answer attribute. The Quiz class will have a questions attribute that holds an
# array of Question objects. The Quiz class will also have a method called run that will display the questions and prompt the
# user for an answer. If the answer is correct, the user will get a message saying "Correct!" and move on to the next question.
# If the answer is wrong, the user will get a message saying "Incorrect!" and be given the same question again. At the end of the
# quiz, the user will get a score.

class Question
  attr_accessor :prompt, :answer

  def initialize(prompt, answer)
    @prompt = prompt
    @answer = answer
  end
end

class Quiz
  attr_accessor :questions

  def initialize(questions)
    @questions = questions
  end

  def run
    score = 0
    @questions.each do |question|
      puts question.prompt
      user_answer = gets.chomp
      if user_answer == question.answer
        puts "Correct!"
        score += 1
      else
        puts "Incorrect!"
      end
    end
    puts "You got #{score} out of #{questions.length} questions correct."
    run_again
  end

  def run_again
    puts "Would you like to run the quiz again? (y/n)"
    puts "Please enter 'y' or 'n'."
    user_input = gets.chomp
    begin
      raise "Error: Invalid response" unless user_input == "y" or user_input == "n"
      if user_input == "y"
        run
      else
        puts "Goodbye!"
        exit
      end
    rescue => e
      puts e.message
      retry
    end
  end
end

question1 = Question.new("What is the capital of France?\n(a) Paris\n(b) London\n(c) Berlin", "a")
question2 = Question.new("What is the capital of Germany?\n(a) Paris\n(b) London\n(c) Berlin", "c")
question3 = Question.new("What is the capital of England?\n(a) Paris\n(b) London\n(c) Berlin", "b")

questions = [question1, question2, question3]

quiz = Quiz.new(questions)
quiz.run
