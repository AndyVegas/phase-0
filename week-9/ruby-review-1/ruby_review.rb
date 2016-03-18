# I worked on this challenge with: Andrew Vathanakamsang.
# This challenge took me 1 hour.


# Pseudocode
# input: array of integers
# output: Array where 3 is replaced with fizz, 5 is replaced with buzz, and 15 is replaced with fizzbuzz
# iterate through the array of integers and identify whether that specific element is either multiple of 3, 5, or 15
# IF so we want to replace that number with the respective "string"
# ELSE it is not a multiple of 3, 5, 15 then return the same number
# it returns the "fizzbuzz" aray

# Initial Solution

# test_array = [1,2,3, 5]

# def super_fizzbuzz(array)
#   array.map! do |x|
#     if x%3 == 0
#       x = "Fizz"
#     elsif x%5 == 0
#       x = "Buzz"
#     elsif x%15 == 0
#       x = "FizzBuzz"
#     else x%3 == 0 || x%5 == 0 || x%15 == 0
#       p x
#     end
#   end
# p array
# end



# super_fizzbuzz(test_array)


# Refactored Solution

def super_fizzbuzz(array)
  array.map! do |x|
    if x % 3 == 0 
      x = "Fizz"
    elsif x % 5 == 0 
      x = "Buzz"
    elsif x % 15 == 0 
      x = "FizzBuzz"
    else x % 3 == 0 || x % 5 == 0 || x % 15 == 0
      p x
    end
  end
end

# Reflection

# What concepts did you review in this challenge?
# We went over alot of the basics.  Various loops (until unless) and a destructive map function.  This was a good review challenge.

# What is still confusing to you about Ruby?
# Ruby is sinking in, though the JS training has me thinking about semicolons more often now.  

# What are you going to study to get more prepared for Phase 1?
# I will learn more methods and get a better idea about what Ruby can do for me.  