# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}


# Create a method my_array_finding_method that takes an Array and a letter as arguments and returns a new array of the words that contain that letter.

#PSEUDOCODE 

#1 a new method taking two arguments - the array of words and the letter we're searching for.
#2 using .map we can convert the entire array into strings (getting rid of those pesky integers).
#3 using .select method to iterate and search.
# Andrew Crowley's solution

def my_array_finding_method(source, thing_to_find)
  make_string = source.map { |e| e.to_s }
    make_string.select { |e| e.include?(thing_to_find) }
end

# Create a method my_hash_finding_method that takes a Hash and number as arguments and returns a new array of pet names by age.

#PSEUDOCODE 

#1 two arguments again - hash of pet names and the age we're searching for.  
#2 create a new hash using .select.  This method will iterate through each item in the hash and pick out what we're searching for.
#3 we are searching for age so the value we want == thing_to_find
#4 since the keys = pet names in this hash, and that's what we want to show, .keys works perfectly.


def my_hash_finding_method(source, thing_to_find)
  solution = source.select { |key, value| value == thing_to_find }
  solution.keys
end

# Identify and describe the Ruby method(s) you implemented.

# .map - used to convert array elements into strings.  This method iterates through an array and returns a new array where each element has been modified as per my instructions.
# .select - Iterates through an array and returns a new array based on your argument. 
# .include? - Searches a string for your argument and returns true or false.
# .keys - This one returns a new array populated with the keys from this hash. 



# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#