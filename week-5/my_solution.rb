# Calculate the mode Pairing Challenge

# I worked on this challenge Kari Giberson

# I spent 3 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# input is an array.

# What is the output? (i.e. What should the code return?)
# output is a new array.

# What are the steps needed to solve the problem?
#1 sort array in sequential order
#2 create an empty hash - make array objects hash key.
#3 because hash keys are unique, when we iterate over the array to make the hash we can count duplicates and store in the key's value.
#4 identify largest values and select their paired key to be returned as an array.

# 1. Initial Solutions

=begin

#1

def mode(array)
 array2 = array.sort
 hash = Hash.new 0
 array2.each {|key| hash.store(key, hash[key]+1)}
 max = hash.values.max
  array3 = []
  hash.each do |k, v|
  	if v == max 
  		array3 << k
	end
	end
	return array3
end

#2
	
def mode(array)
	array2 = array.sort
	array2.to_h
	array2.group_by(&:length)
end

=end


# 3. Refactored Solution

def mode(array1)
 array2 = array1.sort
 hash = Hash.new(0)
 array2.each {|k| hash.store(k, hash[k]+1)}
 max = hash.values.max
 array3 = []
 hash.each do |k, v| if v == max
   array3 << k
   end
 end
 return array3
end


=begin

# 4. Reflection
	
1) Which data structure did you and your pair decide to implement and why?

We decided to use hashes.  This allowed us to take advantage of the key/value pair in an attempt to determine the most frequent values.

2) Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
Absolutely.  Our pseudocode doesn't exactly read like code, but we were able to break down the problem into four steps and definitely went back to our pseudocode a few times to follow along with next steps.  It really clicked this time.  

3) What issues/successes did you run into when translating your pseudocode to code?
For the most part, everything worked out.  We looked at .group_by, as well as &:length, but neither one ended up in our code.  


4) What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
In the end we used the array method .each which feels like it will get alot of use going forward.  Also .store which associates the value given by value with the key given by key.  Also, .values which returns a new array populated with the values from hash.

=end