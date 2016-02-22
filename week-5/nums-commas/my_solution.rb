# Numbers to Commas Solo Challenge

# I spent 3 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# input is an integer formatted without commas
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
	big_num = new_num.length / 3.0
	if new_num.length < 4
		p num.to_s
	elsif new_num.length%3 == 0
		n = -4
    (big_num.to_i-1).times do |i|
      new_num.insert(n, ',')
      n -= 4
    end
    p new_num.join()
  else
      n = -4
    big_num.to_i.times do |i|
      new_num.insert(n, ',')
      n -= 4
    end
  p new_num.join()
  end
end




# 2. Refactored Solution

#def separate_comma(num)
#  num.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
#end


# 3. Reflection

#What was your process for breaking the problem down? What different approaches did you consider?
#I knew that .size/.length would come into play as well as .split(//), to be able to integer.  Any numbers shorter than four digits could be left alone so I wanted to knock that part out first with an if statement.  

#Was your pseudocode effective in helping you build a successful initial solution?
#It was helpful, but I hadn't considered the using .reverse until I looked online.  That is a much effective method.  

#What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
#My refactored solution first turns the number to a string, then uses .chars to separate the string (instead of .split), followed by reversing the string .each_slice(3) which slices into groups of three followed by .map to change the return value, followed by joining the array with the required comma and re-reversing it.  Phew!  Sorry for the run on sentence.  

#How did you initially iterate through the data structure?
#I used a .times loop.  

#Do you feel your refactored solution is more readable than your initial solution? Why?
#Much more.  It is really so simple when you get right down to it and I wish my pseudocode had taken me there more quickly!