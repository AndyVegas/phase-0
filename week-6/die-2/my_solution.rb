# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: a new die (object) with strings (array) on all sides
# Output: a random string from the array after die is rolled
# Steps:
#1 - create a new Die class
#2 - if passed an empty array, raise ArgumentError
#3 - create a method that returns one of the sides (string) after rolling


# Initial Solution

class Die
  def initialize(labels)
  	@labels = labels
  	@size = labels.length
  	if labels == []
  		raise ArgumentError.new("You passed an empty array!") 
  end

  def sides
  	p @size
  end

  def roll
  	p @labels.sample
  end
end
end

p die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die.sides
p die.roll




# Refactored Solution
=begin
	
class Die
  def initialize(labels)
  	@labels = labels
  	if labels == []
  		raise ArgumentError.new("You passed an empty array!") 
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels.sample
  end
end
end

p die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die.sides
p die.roll
	
=end






=begin

# Reflection

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
No I sure didn't!  It was very similar, the main difference being instead of integers and using < or >, we were dealing with arrays, and used an empty array.  I also used .sample this time, instead of rand.  

What does this exercise teach you about making code that is easily changeable or modifiable? 
If the code is clean and works efficiently, it can be very easy to modify for other purposes.

What new methods did you learn when working on this challenge, if any?
myArray.sample(x) can help you to get x random elements from the array.
What concepts about classes were you able to solidify in this challenge?
Using instance variables within classes is getting more solid.




=end
