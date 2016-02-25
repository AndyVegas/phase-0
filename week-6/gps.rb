# Your Names
# 1) Andrew Crowley
# 2)

# We spent 1.75 hours on this challenge.

# Bakery Serving Size portion calculator.

#INITIAL SOLUTION

=begin

class Calculator
  def initialize(item_to_make, num_of_ingredients)
    @item_to_make = item_to_make
    error_counter = 3
    raise ArgumentError.new("#{item_to_make} is not a valid input") if error_counter > 0
    end
  end


def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  raise ArgumentError.new("#{item_to_make} is not a valid input") if library.has_key?(item_to_make) == false
    
  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size

  if remaining_ingredients == 0
     "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  elsif remaining_ingredients >= 7
     "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: Make pie"
  elsif remaining_ingredients >= 5
    "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: Make cake"
  else "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: Make cookie"
  end
end
 
=end


#REFACTORED SOLUTION

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  raise ArgumentError.new("#{item_to_make} is not a valid input") if library.key?(item_to_make) == false
    
  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size

  if remaining_ingredients == 0
     "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  elsif remaining_ingredients >= 7
     "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: Make pie"
  elsif remaining_ingredients >= 5
    "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: Make cake"
  else "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: Make cookie"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)
p leftovers




#  Reflection

# What did you learn about making code readable by working on this challenge?
#As challenging as it can seem sometimes, refactoring is always possible, and even subtle modifications can improve your code.  In this case I'm able to apply new Ruby with .key? instead of has_key?


# Did you learn any new methods? What did you learn about them?
# I learned about the has_key? and then .key?(some_key).  It was exactly what I needed for this challenge.  It iterates over the hash and lets me search for a key.


# What did you learn about accessing data in hashes? 
# They key/value pair can be a great tool for accessing data in hashes.  

# What concepts were solidified when working through this challenge?
# The logical flow of the code - as in the positioning of the if / elsif math, so as to always getting true - was simple but important.  The ArgumentError raising has been more solidified.  Aji was great at asking questions rather than leading me to the answer.  I hope I did OK!

