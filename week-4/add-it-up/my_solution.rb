# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Eric Gumerlock.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

=begin

Array[1, 2, 3, 4, 5]
define total of x numbers in array
add position 1 + position 2 + position 3 etc
print sum

=end


# Input: Array of numbers
# Output: Total
# Steps to solve the problem.

#Step 1 = add all array numbers up
#Step 2 = return sum of all numbers

#def total(x,y)
#	x + y = z
#	find z
#end

# 1. total initial solution

#def total(array)
#	array.each {|x| sum += x}
#end


# 3. total refactored solution

def total(array)
	array.inject(0,:+)
end



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!

=begin

Array["hello", "buddy", "you", "look", "like", "you've", "lost", "weight"]
define total of x words in array
add position 1 + position 2 + position 3 etc
add " " between words
capitalize first letter
add period at the end
print "sum"

=end


# Input: Array
# Output: Complete sentence with capitalization and a period
# Steps to solve the problem.

#1) define method
#2) add all strings together
#3) capitalization of letter in position 0
#4) add a period at the end

# 5. sentence_maker initial solution

#def sentence_maker(array)
#	  string = array.join(' ')
#	  string.capitalize!
#	  "#{array}."
#end

# 6. sentence_maker refactored solution

def sentence_maker(array)
	  array.join(' ').capitalize! << "."
end

