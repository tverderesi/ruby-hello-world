# Simple Calculator code

should_run = true

def run_again()
  puts "Run another operation? (y/n)"
  run_again = gets.chomp
  if run_again == "n"
    should_run = false
    puts "Exiting..."
    exit
  end
end

def addition
  print "Enter first number: "
  a = gets.chomp.to_i
  print "Enter second number: "
  b = gets.chomp.to_i
  puts "The sum of #{a} and #{b} is #{a + b}."
end

def subtraction
  print "Enter first number: "
  a = gets.chomp.to_i
  print "Enter second number: "
  b = gets.chomp.to_i
  puts "The difference of #{a} and #{b} is #{a - b}."
end

def multiplication
  print "Enter first number: "
  a = gets.chomp.to_i
  print "Enter second number: "
  b = gets.chomp.to_i
  puts "The product of #{a} and #{b} is #{a * b}."
end

def division
  print "Enter dividend: "
  a = gets.chomp.to_f
  print "Enter divisor: "
  b = gets.chomp.to_f
  puts "The quotient of #{a} divided by #{b} is #{a / b}."
end

def exponentiation
  print "Enter base: "
  a = gets.chomp.to_i
  print "Enter exponent: "
  b = gets.chomp.to_i
  puts "#{a} raised to the power of #{b} is #{a ** b}."
end

def absolute_value
  print "Enter a number: "
  a = gets.chomp.to_i
  puts "The absolute value of #{a} is #{a.abs}."
end

def square_root
  print "Enter a number: "
  a = gets.chomp.to_i
  puts "The square root of #{a} is #{Math.sqrt(a)}."
end

def eval_expression
  print "Enter an expression: "
  expression = gets.chomp
  result = eval(expression)
  puts "The result of the expression #{expression} is #{result}."
end

def main
  operations = {
    1 => "Addition",
    2 => "Subtraction",
    3 => "Multiplication",
    4 => "Division",
    5 => "Exponentiation",
    6 => "Absolute Value",
    7 => "Square Root",
    8 => "Eval",
    9 => "Exit",
  }
  2.times { print "\n" }
  puts "Simple Calculator"
  20.times { print "-" }
  print "\n"
  operations.each do |key, value|
    puts "#{key}. #{value}"
  end
  print "Enter your choice: "
  choice = gets.chomp.to_i

  case choice
  when 1
    addition()
    run_again()
  when 2
    subtraction()
    run_again()
  when 3
    multiplication()
    run_again()
  when 4
    division()
    run_again()
  when 5
    exponentiation()
    run_again()
  when 6
    absolute_value()
    run_again()
  when 7
    square_root()
    run_again()
  when 8
    eval_expression()
    run_again()
  when 9
    puts "Exiting..."
    should_run = false
    exit
  else
    puts "Invalid choice. Please try again."
  end
end

while should_run
  main()
end
