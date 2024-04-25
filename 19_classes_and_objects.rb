# Classes and Objects
# Classes are the blueprints for objects. Objects are instances of classes. They have attributes and methods.
# Classes are defined using the class keyword. The class keyword is followed by the class name and a block of code
# that defines the class's attributes and methods.

class Rectangle
  attr_accessor :length, :width

  def initialize(length, width)
    @length = length
    @width = width
  end

  def area
    @length * @width
  end

  def perimeter
    2 * (@length + @width)
  end

  def is_square?
    @length == @width
  end
end

# Create a new instance of the Rectangle class

rectangle = Rectangle.new(5, 5)

# Call the area method on the rectangle object
puts "Area: #{rectangle.area}"

# Call the perimeter method on the rectangle object
puts "Perimeter: #{rectangle.perimeter}"

# Call the is_square? method on the rectangle object
puts "Is square? #{rectangle.is_square?}"

# Classes can also have class methods. Class methods are defined using the self keyword followed by a dot and the
# method name.

class Circle
  attr_accessor :radius

  def initialize(radius)
    @radius = radius
  end

  def self.pi
    Math::PI
  end

  def area
    self.class.pi * @radius ** 2
  end

  def circumference
    2 * self.class.pi * @radius
  end

  def area_but_cool
    supercool_method
    self.area
  end

  private

  def supercool_method
    print " I'm super cool and private!"
  end
end

# Create a new instance of the Circle class
circle = Circle.new(5)

# Call the area method on the circle object
puts "Area: #{circle.area}"

# Call the circumference method on the circle object
puts "Circumference: #{circle.circumference}"

# Call the pi class method on the Circle class
puts "Pi: #{Circle.pi}"

# Classes can also have private methods. Private methods are only accessible within the class and cannot be called
# from outside the class.

puts "Area but cool: #{circle.area_but_cool}"

# Inheritance
# Inheritance is a way to create a new class based on an existing class. The new class inherits the attributes and
# methods of the existing class. The existing class is called the superclass or parent class, and the new class is
# called the subclass or child class. The subclass can add new methods or atrributes.

class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "Hello! My name is #{@name}."
  end
end

class Dog < Animal
  def speak
    "Woof! My name is #{@name}."
  end
end

class Cat < Animal
  def speak
    "Meow! My name is #{@name}."
  end
end

# Create a new instance of the Animal class
animal = Animal.new("Animal")

# Call the speak method on the animal object
puts animal.speak

# Create a new instance of the Dog class
dog = Dog.new("Dog")

# Call the speak method on the dog object
puts dog.speak

# Create a new instance of the Cat class
cat = Cat.new("Cat")

# Call the speak method on the cat object
puts cat.speak
# Modules
# Modules are collections of methods and constants. They are similar to classes, but they cannot be instantiated.
# Modules are used to group related methods and constants together. They can be included in classes to add functionality.

module MathHelper
  def self.square(x)
    x ** 2
  end

  def self.cube(x)
    x ** 3
  end
end

class Calculator
  include MathHelper

  def square_root(x)
    Math.sqrt(x)
  end
end

# Create a new instance of the Calculator class
calculator = Calculator.new

# Call the square method from the MathHelper module
puts "Square: #{MathHelper.square(5)}"

# Call the cube method from the MathHelper module
puts "Cube: #{MathHelper.cube(5)}"

# Call the square_root method from the Calculator class
puts "Square root: #{calculator.square_root(25)}"
# Modules can also be used to namespace methods and constants.

module Geometry
  class Circle
    def self.pi
      Math::PI
    end
  end
end

# Call the pi method from the Circle class in the Geometry module
puts "Calling pi from Geometry::Circle: #{Geometry::Circle.pi}"
# Modules can be included in classes using the include keyword. When a module is included in a class, its methods and
# constants become available to instances of that class.

# Modules can also be used to create mixins. Mixins are modules that are included in multiple classes to add common
# functionality.

module Greetable
  def greet
    "Hello! My name is #{@name}."
  end
end

class Person
  include Greetable

  def initialize(name)
    @name = name
  end
end

class Robot
  include Greetable

  def initialize(name)
    @name = name
  end
end

# Create a new instance of the Person class
person = Person.new("Alice")

# Call the greet method on the person object
puts person.greet

# Create a new instance of the Robot class
robot = Robot.new("Bender")

# Call the greet method on the robot object
puts robot.greet
# Modules can also be used to create namespaces. Namespaces are used to organize classes and modules into groups.

module Animals
  class Dog
    def speak
      "Woof!"
    end
  end

  class Cat
    def speak
      "Meow!"
    end
  end
end

# Create a new instance of the Dog class in the Animals namespace

dog = Animals::Dog.new

# Call the speak method on the dog object
puts "Dog says: #{dog.speak}"

# Create a new instance of the Cat class in the Animals namespace

cat = Animals::Cat.new

# Call the speak method on the cat object

puts "Cat says: #{cat.speak}"
