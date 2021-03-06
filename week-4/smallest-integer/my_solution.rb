# Smallest Integer

# I worked on this challenge with Andrew Larsen.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
	tiny_num = list_of_nums.sample
		list_of_nums.each do |num|
			if num < tiny_num
				tiny_num = num
			end
		end
		tiny_num
end
