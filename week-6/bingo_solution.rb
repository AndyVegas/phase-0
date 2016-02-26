# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 1: Pseudocode

# Outline:

# Bingo board is five rows wide by five columns tall
# A random letter (B-I-N-G-O) is called along with a number (1..100)

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

  def generator
  	Array#sample?

  end

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoSolution < ParentClass
	def initialize(board)
		@board = board
		@letter = {'B'=>0,'I'=>1,'N'=>2,'G'=>3,'O'=>4} 
		@number = rand(1..100)
		@letter_key = @letter.values.sample
	end
	
	
end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection














