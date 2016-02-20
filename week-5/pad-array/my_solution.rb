# Pad an Array

# I worked on this challenge with Sami Zhang

# I spent 2.5 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? An array with itegers and string(s)
# What is the output? A new array with integer or string added if meets minimum size
# What are the steps needed to solve the problem? 
# Create a method called pad! and pad
# Change elements within array into string
# Check the size of array
# Set a minimum size for new element to add into array
#IF the array's length is less than the minimum size, pad should return a new array padded with the pad value up to the minimum size.
# End method


# 1. Initial Solution
def pad!(array, min_size, value = nil)
  if min_size <= array.length
  	p array
  else 
    array << [value] * (min_size - array.length) 
  end
end  



 
def pad(array, min_size, value = nil) #non-destructive
	new_array = Array.new(array)
  difference = (min_size - array.length)
  difference.times {new_array << value}
  return new_array
end



# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
 array.fill(value, array.length...min_size)
end

def pad(array, min_size, value = nil) #non-destructive
array.clone.fill(value, array.length...min_size)
end


=begin

4. Reflection


Were you successful in breaking the problem down into small steps?
Yes, our pseudocode was reasonably helpful in starting small and working through the steps.  

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
This challenge was more difficult than calculating the mode and some of the other paired challenges recently.  I'm not sure I fully understood the summary before we got started.  That said, there were similarities between this and the 5.3 challenge in terms of iterating using each.  Using .times was a success, and we managed to work through the problem in a decent amount of time. 

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?  Our initial solutions for both destructive and non yielded errors.  We had some basic undefined variables and also weren't able to get the output as an array at first.  

When you refactored, did you find any existing methods in Ruby to clean up your code?
Yes!  .clone was an interesting find, producing a copy of our object.  

How readable is your solution? Did you and your pair choose descriptive variable names?
I feel our initial solutions are more readable than our refactors.  Concise isn't always better (for me).

What is the difference between destructive and non-destructive methods in your own words?

Destructive methods, quite simply, change the object on which their called, meaning the output will be different than what you started with (in-place modification).  Non descructive will return a copy.  The bang serves as a warning.  

=end