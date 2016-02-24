# Build a simple guessing game


# I worked on this challenge by myself
# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: a particular integer  - user wants to guess what it is.
# Output: a symbol indicating if the guess was high, low or correct. 
# Steps: 
#1 raise an error if the guess is not an integer.
#2 create a method .guess which will compare the both integers (guess and answer)
#3 if guess is low, answer :low if guess is high answer :high and correct answer :correct
#4 create a method .solved? which returns true if the guess is correct and false if not.  

# Initial Solution

=begin

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
    if answer.is_a?(Integer) == false
      raise ArgumentError.new("Need an integer!")
  end
end

  # Make sure you define the other required methods, too

def guess(guess)
	if guess.to_i > @answer
		@solved = false
		return :high
	elsif guess.to_i < @answer
		@solved = false
		return :low
	else guess.to_i == @answer
		@solved = true
		return :correct
	end
end

def solved?
	@solved
end
end

vegas = GuessingGame.new(40)

p vegas.guess(25)
p vegas.guess(80)
p vegas.guess(40)
p vegas.solved?

=end

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
      raise ArgumentError.new("Need an integer!") if answer.is_a?(Integer) == false
  end

	def guess(guess)
		if guess.to_i > @answer
			@solved = false
			:high
		elsif guess.to_i < @answer
			@solved = false
			:low
		else 
			@solved = true
			:correct
		end
	end

def solved?
	@solved
end



vegas = GuessingGame.new(40)

p vegas.guess(25)
p vegas.guess(80)
p vegas.guess(40)
p vegas.solved?


end

# Reflection

=begin
	
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
A local variable is available only inside the method it is defined, whereas an instance variable is bound to the specific instance of the class. By binding itself to the entire object, an instance variable makes itself available to every method of the object.

When should you use instance variables? What do they do for you?
An instance variable has a name beginning with @, and every instance of a class will have a different set of instance variables.  If we were to set a local variable instead, we would not be able to use it later on within our class.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
I did at first, trying to put the ArgumentError above the instance variables - it didn't work!

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
I know that symbols have performance benefits, but that probably doesn't apply in this challenge.  Also, symbols remain constant and if you're using the same string tens or hundreds of times, you're better off using symbols. 

=end