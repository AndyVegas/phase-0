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


