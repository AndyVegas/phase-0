# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode

# input:
# output:



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


# Refactored Solution

test_array = [1,2,3, 5]

def super_fizzbuzz(array)
  new_array = array.map! do |x|
  if x % 3 == 0 
    x = "Fizz"
  elsif x % 5 == 0 
    x = "Buzz"
  elsif x % 15 == 0 
    x = "FizzBuzz"

new_array.map(&:to_s)

  # p array.map(&:to_s)
  # array.map { |x| x.to_i  }

end

super_fizzbuzz(test_array)





# def super_fizzbuzz(array)
#   array.map! do |x|
#     if x % 3 == 0 
#       x = "Fizz"
#     elsif x % 5 == 0 
#       x = "Buzz"
#     elsif x % 15 == 0 
#       x = "FizzBuzz"
#     else x % 3 == 0 || x % 5 == 0 || x % 15 == 0
#       p x
#     end
#   end
# end




# Reflection