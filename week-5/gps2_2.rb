#GPS 2.2 - Ruby

#Create an Electronic Grocery List


# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# steps:
  # Create a method
  # empty hash
  # output: returns an empty has

# Method to add an item to a list
# input: takes two arguments as item and quantity
# steps: append item and related quantity to hash
# output: The hash that has the new item and its quantity

# Method to remove an item from the list
# input: a method takes an item name as argument
# steps: shop list delets an item
# output: updated list

# Method to update the quantity of an item
# input: the item and quantity 
# steps: overwrite old item + qty with new item + qty
# output: prints updated list

# Method to print a list and make it look pretty
# input: complete list
# steps: print a string saying "My Grocery List". 
# output: prints string with complete list items + qty

def shop_list
  {}
end

def add_item(item_name, item_quantity, my_list)
  my_list[item_name] = item_quantity
end

def remove_item(my_list, item_name)
  my_list.delete(item_name)
  puts my_list
end

def change_qty(item_name, new_item_quantity, my_list)
	my_list[item_name] = new_item_quantity
end

def print_list(my_list)
	puts "My Grocery List: "
	my_list.each_pair {|item_name, item_quantity| puts "#{item_name} #{item_quantity}"}
end



list = shop_list
add_item("Lemonade", 2, list)
remove_item(list, "Lemonade")

add_item("Tomatoes", 3, list)

add_item("Ice-cream", 4, list)

change_qty("Ice-cream", 1, list)

add_item("Onions", 1, list)

print_list(list)

=begin
Release 5: Reflect

What did you learn about pseudocode from working on this challenge?
The psuedocode was very helpful in this challenge, and reminded me to "think small" in many cases.  For example, our first part of the release "Create a new list" was as simple as defining the method with an empty hash.  

What are the tradeoffs of using Arrays and Hashes for this challenge?
Hashes were the obvious choice because of the key/value pair aspect.  

What does a method return?
Every method in Ruby returns a value, by default. This returned value will be the value of the last statement. For example:

```ruby
def test
   i = 100
   j = 10
   k = 0
end
```

This method, when called, will return the last declared variable k.

What kind of things can you pass into methods as arguments?
We can declare parameters - a list of local variable names in parentheses. Ruby lets you specify default values for a method's arguments—values that will be used if the caller doesn't pass them explicitly. 

How can you pass information between methods?
Arguments are pieces of information that are sent to a method to be modified or used to return a specific result. We "pass" arguments to a method when we call it. 

What concepts were solidified in this challenge, and what concepts are still confusing?
Working with methods is getting better as I go.  I think I am struggling with some of the logic, in terms of how to break down / look at a problem before starting pseudocode.  More office hours!

=end