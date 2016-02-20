# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# input is an integer
# What is the output? (i.e. What should the code return?)
# output is the same integer, seperated by commas every three decimal places and returned as a string.
# What are the steps needed to solve the problem?
# we need to sort each integer by length.  if the integer has 3 or less "characters", we leave it and convert to sting.  if not, we add a comma every third decimal place.

#what methods to use
#.length
#.each
#.map
#.split
#.reverse

# 1. Initial Solution


=begin
def separate_comma(number)
  number.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
end
=end




def separate_comma(num)
	new_num = num.to_s.split(//)
	big_num = new_num.join.reverse.each_slice(3)
	big_num.map.join(",").reverse
	if new_num.length <= 3
		return new_num.join
	else
		return big_num
	end


	



end


# 2. Refactored Solution


#num.to_s.split(//).reverse.each_slice(3).map(&:join).join(',').reverse

# 3. Reflection
