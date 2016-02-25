# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

a = number_array.map do |element|
    if element.kind_of?(Integer)
      p element + 5
    elsif element.kind_of?(Array)
      element.map {|inner| inner + 5}
    end
  end

p a


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
# # b = startup_names.map do |element|
# #     if element.kind_of?(String)
# #       p element + "ly"
# #     if element.kind_of?(Array)
# #       p element + "ly"
      
# #     elsif element.kind_of?(Array)
# #       element.map {|inner| inner + "ly"}
# #     end
# #   end

a = startup_names.flatten
p a.map! {|word| word + "ly"}


# a = startup_names.map do |element|
#     if element.kind_of?(String)
#       p element + "ly"
#     elsif element.kind_of?(Array)
#       element.map {|inner| inner + "ly"}
#     elsif element.kind_of?(String)
#       p element + "ly"
#     elsif element.kind_of?(Array)
#       element.map {|inner| inner + "ly"}
#     elsif element.kind_of?(String)
#       p element + "ly"
    
    
    
#     end
#   end





# Reflection

# What are some general rules you can apply to nested arrays?
# Nested arrays or multidimensional arrays are pretty much what they sound like - an array with one or more arrays nested inside of it.  They can be accesed using basic positioning functions, 0 being the first position and so on.  

>> letters = %w{a b c d e f}
=> ["a", "b", "c", "d", "e", "f"]
>> letters[0..1]
=> ["a", "b"]
>> letters[0, 2]
=> ["a", "b"]
>> letters[0...2]
=> ["a", "b"]
>> letters[0..-5]
=> ["a", "b"]
>> letters[-6, 2]
=> ["a", "b"]


# What are some ways you can iterate over nested arrays?
# You can iterate over nested arrays just like normal arrays with .each and .map

nested_array.each do {|x| print x, " -- " }


# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# .flatten was an interesting method I just found, but with our desire to keep the array as it was, we didn't use that.  But I just went back and completed the bonus problem using flatten - to get rid of the nesting!  Hooray reflection!