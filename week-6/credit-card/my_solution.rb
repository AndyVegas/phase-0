# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with: Charles Lee
# I spent 2 hours on this challenge.

# Pseudocode

# Input: a sixteen digit card number
# Output: true or false confirmation that it's a valid card #
# Steps: 
#   1. Convert given integer into string
#   2. Split string into array, with each character its own element
#   3. Starting with index 0, multiply every other element by 2
#   4. Apply a code block to each element that converts 2-digits numbers into the sum of their digits
#   5. Sum all digits in array
#   6. Divide sum by 10
#   7. If no remainder, return true. Otherwise return false

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
  
#   def initialize(card_number)
#     @string_number = card_number.to_s
#     raise ArgumentError.new("Not a valid card. Must be 16 digits.") unless @string_number.length == 16 
#   end
  
  # def convert_to_array
  #   @new_array = @string_number.split(//)
  # end
  
  # def even_map(array)
  #   array.map {|element| 
  #     if array.index.even? 
  #       element = 2 * element
  #     end}  
  #   puts array
  # end

    # def check_card
    #   array_version = @string_number.split(//)
    #   array_version.index.even.map! {|element| element * 2 }
    #   p array_version
    # end
  
#     def check_card
#       array_version = @string_number.split(//)
#       array_version.map!.with_index { |number, index|
#         if index % 2 ==0
#           number = number.to_i * 2
#         else 
#           number = number.to_i
#         end }
#       array_version.map! {|number|
#         number = number/10 + number%10 }

#       sum = 0
#       array_version.each do |number| sum += number
#       end
#       if sum % 10 == 0
#         p true
#       else
#         p false  
#       end
#     end
      
# end


# Refactored Solution

class CreditCard
  
  
  def initialize(card_number)
    @string_number = card_number.to_s
    raise ArgumentError.new("Not a valid card. Must be 16 digits.") unless @string_number.length == 16 
    @sum = 0
    @array_version = Array.new
  end
  
  def split_string
    @array_version = @string_number.split(//)
    @array_version.map! {|number| number.to_i}
  end
  
  def double_even_elements
    @array_version.map!.with_index { |number, index|
      if index.even?
        number = number * 2
      else 
        number = number
      end 
    }
  end
  
  def convert_double_digit_elements
    @array_version.map! {|number|
      number = number/10 + number%10 }  
  end
  
  def sum_of_all_elements
    @array_version.each {|number| @sum += number}
    @sum
  end
  
  def check_ten
    if @sum % 10 == 0
      p true
    else
      p false  
    end
  end
  
  def check_card
    split_string
    double_even_elements
    convert_double_digit_elements
    sum_of_all_elements
    check_ten
  end
end
  
  
  
  
  
  
  
#   def check_card
#     array_version = @string_number.split(//)
#     array_version.map!.with_index { |number, index|
#       if index % 2 ==0
#         number = number.to_i * 2
#       else 
#         number = number.to_i
#       end }
#     array_version.map! {|number|
#       number = number/10 + number%10 }

#     sum = 0
#     array_version.each do |number| sum += number
#     end
  
      



  
  
# Driver Code
  
#   def check_card
#     split_string
#     double_even_elements
#     convert_double_digit_elements
#     sum_of_all_elements
#     check_ten
#   end
# end
  

# Reflection

# What was the most difficult part of this challenge for you and your pair?
#Probably psuedocoding.  Wrapping our head around the necessary (and small) steps took some time, but once we got it down, the coding came "easily" as we were able to return to our code and go for the next solution.

# What new methods did you find to help you when you refactored?
# .map!.with_index was a nice one for this challenge.  Charlie also came with a great math block (number = number/10 + number%10) for figuring out how to split up two digit integers.

# What concepts or learnings were you able to solidify in this challenge?
# Converting from arrays to strings and back has started to make more sense.  Also, as I learn new methods and study the ruby docs, I'm starting to see multiple solutions to problems/challenges... Before I feel like I would struggle to find just one solution!