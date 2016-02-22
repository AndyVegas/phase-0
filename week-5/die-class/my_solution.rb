# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

# 0. Pseudocode

# Input: a new object with some number of sides, to be rolled.
# Output: a random number between 1 and ?
# Steps: 
#1 - create a new Die class
#2 - if number of sides < 1 raise argument error
#3 - create a method that returns a number of sides

# 1. Initial Solution
=begin
class Die
  def initialize(sides)
  	if sides >=1
  		@sides = sides
  	else
      raise ArgumentError.new("Must be greater than 0.") 
    end
  end

  def sides
    return @sides
  end

  def roll
    return Random.new.rand(1..@sides)
  end
end
=end


# 3. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    if @sides < 1
      raise ArgumentError.new("Must be greater than 0.") 
    end
  end

  def sides
    @sides
  end

  def roll
    p rand(1..@sides)
  end
end

vegas = Die.new(7)
vegas.roll

# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
An ArgumentError is an Exception and an Exception is basically a special type of Ruby object that when created will terminate normal execution.  An ArgumentError is raised when the arguments are wrong. You should raise your own ArgumentError in methods to notify users of your class, if you think certain kinds of arguments aren’t acceptable.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
Defining a class was a first, as well as creating instance variables.  I had a decent time refactoring after reading the section on syntactic sugar in The Well Grounded Rubyist.

What is a Ruby class?  Why would you use a Ruby class?
A class is the blueprint from which individual objects are created.  Classes are a way to organize objects and methods.  

What is the difference between a local variable and an instance variable?
Variables beginning with @ are instance variables. if your variable does not start with a @, it is considered to be a local variable.  Class variables are prefixed with @@.  Local variable can only be used inside one method.

Where can an instance variable be used?
We use instance variables to have them be accessible in any method of the class, and retains its value.

=end