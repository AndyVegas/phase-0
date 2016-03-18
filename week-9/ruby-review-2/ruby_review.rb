# Reverse Words


# I worked on this challenge by myself.
# This challenge took me 1 hour.

# Pseudocode
# input - a string, possibly empty or with one or more words
# output - a string, with the same words in order, but the letters in each word reversed.


# Refactored Solution

def reverse_string(string)
  string.to_s.reverse.split.reverse.join(' ')
end


# Reflection


# What concepts did you review in this challenge?
# This was a simple long string assignment, and I had no real need to refactor after I got my initial solution working.

# What is still confusing to you about Ruby?
# I will need to get into some more confusing challenges.  This one was very straight forward.  

# What are you going to study to get more prepared for Phase 1?
# Pseudocode and refactoring.  I need to get better at both skills.