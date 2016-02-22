=begin
	
Summary

In this challenge, you will make your own method to automatically create accountability groups from a list of names. You'll want to make of the People in your cohort. Try to get everyone into an accountability group of 4 or 5. Be sure everyone is in a group of at least 3 -- It's no fun if someone is in a group by themself or with one other person. 

This is a creative challenge and you can make it as easy or difficult as you would like. Decide what an MVP (Minimum Viable Product) will look like and what the output should be. This is part of the challenge.
	
Release 1: Pseudocode
input = an array of names (or numbers in my case).
output = an array of arrays of those names in groupings of four or five.
steps = 1) create an array of the names
2) shuffle them
3) create groups of four or five names, with none smaller than three.

#Initial Solution
rockdoves = (1..51).to_a

def split(cohort)
#	cohort.shuffle
	if cohort.length % 5 == 0
		return cohort.shuffle.each_slice(5).to_a
	elsif cohort.length % 5 == 1
		return cohort.shuffle.each_slice(5).to_a
	elsif cohort.length % 5 == 2
		return cohort.shuffle.each_slice(5).to_a
	else cohort.length % 5 == 3
		return cohort.shuffle.each_slice(5).to_a
	end
end

p split(rockdoves)

def split(rockdoves)
  if rockdoves.length % 5 == 0 || rockdoves.length % 5 == 3 || rockdoves.length % 5 == 1 
    account_group = rockdoves.shuffle.each_slice(5).to_a 
  elsif rockdoves.length % 4 == 0 || rockdoves.length % 4 == 3 || rockdoves.length % 4 == 1 
    account_group = rockdoves.shuffle.each_slice(4).to_a
  end
  if account_group.last.length == 1
  	account_group.first << account_group.pop[0]
  end
end

p split(rockdoves)

=end

#Refactored Solution
rockdoves = (1..51).to_a

def split(rockdoves)
	array = rockdoves.flatten.shuffle
	array.each_slice(5){|x| p x}
end

split(rockdoves)

=begin

Release 6: Reflect

What was the most interesting and most difficult part of this challenge?
I would say it was interesting to come up with / break down the psuedocode and much more difficult to get it to work!

Do you feel you are improving in your ability to write pseudocode and break the problem down?
Yes, but I feel like it has more to do with my understanding of Ruby and her methods, assisting in my psuedocode thinking.

Was your approach for automating this task a good solution? What could have made it even better?
I like my refactored solution, but I still have one group of one, unfortunately.  

What data structure did you decide to store the accountability groups in and why?
I went with arrays.  I saw no benefit in hash key/value pairs.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I used the "or" || function really for the first time and also .flatten, which extracts elements from arrays into a new array.

=end