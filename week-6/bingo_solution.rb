# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 4 hours on this challenge.


# Release 1: Pseudocode

# Outline:
# We have to replace an element within a nested array

# Bingo board is five rows wide by five columns tall
# A random letter (B-I-N-G-O) is called along with a number (1..100)

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Choose a random letter out of the word "BINGO"
  # Choose a random number between 1 and 100

# Check the called column for the number called.
  # Thinking of B-I-N-G-O as indexes 0..4 I can see if my random number matches any numbers in that index.

# If the number is in the column, replace with an 'x'
  # Replace the matched element (number) with an X

# Display a column to the console
  # Return the arrays in a stack on seperate lines

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

# class BingoSolution 
#   def initialize(board)
#     @bingo_board = board
#     @top = ['B', 'I', 'N', 'G', 'O']
#     @letter = ['B', 'I', 'N', 'G', 'O'].sample
#     @number = rand(1..100)
#     @column = @top.index(@letter)
#   end

#     def letter_number
#       letter_number = []
#       letter_number << @letter
#       letter_number << @number
#     end
  
#   def check
#     @bingo_board.map! do |n|
#       if n[@column.to_i] == @number
#         n.map! {|spot| spot == @number ? "X" : spot}
#       else
#         n
#       end
#     end

#     def display_board
#     puts "  B   I   N   G   O"
#      20.times do print "."
#       sleep 0.2
#     end
#     @bingo_board.each do |x| p x.join("  ") 
#       end
#     end
#   end
# end





# Refactored Solution

class BingoSolution 
  def initialize(board)
    @bingo_board = board

      def letter_number
      @letter = ['B', 'I', 'N', 'G', 'O'].sample
      @number = rand(1..100)
      end

  def check
    letter_number
    @number
    @bingo_board.map |n|
      if n.include?(@number)
        n.map! { |spot| spot == @number ? 'X' : spot}
      else
        n
    end
  end
end
end






#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

p new_game = BingoSolution.new(board)
# p new_game.letter_number
# p new_game.check
# p new_game.display_board

#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# Psuedocoding was tricky for sure, especially as I've never played bingo!  Working out the more in depth aspects of displaying the board were difficult, and I'm not sure my final solutions work exactly how I want. 

# What are the benefits of using a class for this challenge?
# A class allows us to use instance variables and methods that can be applied to any new bingo board created in the class

# How can you access coordinates in a nested array?
# This can be accomplished using indexes or iterating with .each or .map (for example).

# What methods did you use to access and modify the array?
# I used .map to alter the element from a number to an "X"

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
#.index, .map! and using an instance variable within an instance variable was new and / or solidified.  The map method takes an enumerable object and a block, and runs the block for each element, outputting each returned value from the block (the original object is unchanged unless you use map!)

# How did you determine what should be an instance variable versus a local variable?
# Since I wanted the variable to be shared across multiple variables, I used instance vars.  If it was only used in one method, I used a local variable.

# What do you feel is most improved in your refactored solution?
# It is alot cleaner and easier to read.