// Release 1: Create your user stories
// In the previous challenge, you had the following minimum requirements. You should include (at least) these requirements again. 

// Create a new list
// Add an item with a quantity to the list
// Remove an item from the list
// Update quantities for items in your list
// Print the list (Consider how to make it look nice!)


// Release 2: Pseudocode
// Determine which data structure you should use for your grocery list based on these requirements. Does an array or an object the most sense and why?

// 1) ask the shopper if they want to make a list yes or no
// 2) find out what single item they want to add to the list
// 3) find out the quantity of single item they want to add to the list
// 4) add the two values to the list
// 5) when finished, print a complete list with items and quantities (will have to add an 'end' break)



var grocery_list = [];
var list;

function add_item(item) {
	grocery_list.push(item);
}

function remove_item(item){
    for (var i = 0; i <= groceryList.length; i++){
        if (groceryList[i] === item) groceryList.splice(i, 1);
        else console.log("That item isn't on the list.");
    }
}

function view_list(){
    for (var i = 0; i < groceryList.length; i++){
        if (groceryList.length == 0)
        return;
        else
        console.log("- " + groceryList[i]);
    }
}


while (true) {
list = prompt('Welcome to the GROCERY LIST!  Would you like to make a list? y/n')
  list = list.toLowerCase();
     if (list === 'n') {
         return;
       } else if (list === 'y') {
       add_item = prompt('What grocery item would you like to add to the list?')
     }
}


