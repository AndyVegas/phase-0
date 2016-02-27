#Attr Methods

# I worked on this challenge by myself.

# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: a persons name, entered by user
# Output: a greeting that uses the persons name
# Steps:
#1 create a new class NameData which initializes a name variable 
#2 create a new class Greetings which initializes a new instance of NameData
#3 create a puts statement that generates a greeting with the info from NameData

class NameData
	attr_accessor :name
	def initialize
		@name = "Andrew"
	end
end

class Greetings
	def initialize
		@namedata = NameData.new
	end

	def greet
		puts "Hello #{@namedata.name}! How wonderful to see you today."
	end
end

hello = Greetings.new
hello.greet


# Reflection

# Release 1

# What are these methods doing?
# Not a great deal.  They are running and returning the instance variable entered by the user.  

# How are they modifying or returning the value of instance variables?
# The methods on lines 71-73 which include .change_my are modifying based on user input.  


# Release 2

# What changed between the last release and this release?  What was replaced?
# An attr_reader has been added for :age, which eliminates this whole method:

# def what_is_age
  #   @age
  # end

# Is this code simpler than the last?
# For sure, this allows us read instance variables in one easy line of code.  


# Release 3

# What changed between the last release and this release?
# Now we've added an attr_writer for :age.  This will allow us to change the :age instance variable.  

# What was replaced?
# The method for change_my_age has been rendered redundant! 

# Is this code simpler than the last?
# Yes, but we could make it even simpler with attr_accessor :age.  I wonder what Release 4 has in store?


# Release 6

# What is a reader method?
# attr_reader is a reader which means that it just returns a value or state outside of the class, but does not change it.

# What is a writer method?
# attr_writer is a writer which means that you can change the value of the variable outside of the class, but it is not readable.  attr_accessor is the best of both worlds - a reader and a writer. It can be used to return and change the value of the variable.

# What do the attr methods do for you?
# Attribute is a high-level term for a particular configuration of methods and instance variables.  The attr methods are basically a powerful set of automated tools or coding shortcuts.  They allow you to write code that is often shorter and more informative.  They are automatically created methods use to create object attributes which store an objects state in instance variables.  

# Should you always use an accessor to cover your bases? Why or why not?
# Not always - You don't always want your instance variables to be fully accessible from outside of the class. There are plenty of cases where allowing read access to an instance variable makes sense, but writing to it might not (e.g. a model that retrieves data from a read-only source). 

# What is confusing to you about these methods?
# I'm not entirely sure why we use : to create symbols when dealing with attr methods.  Wouldn't the instance variable @ sign be a better fit?
