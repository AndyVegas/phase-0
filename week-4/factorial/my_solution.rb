# Factorial

# I worked on this challenge with Eric Gumerlock


# Your Solution Below
def factorial(number)
  # Your code goes here
  if number == 0
  	 1
  else
    number * factorial(number-1)
  end
end