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

function addItem(item) {
  groceryList.push(item);
}

function removeItem(item){
  for (var i = 0; i <= groceryList.length; i++){
    if (groceryList[i] === item) {
      groceryList.splice(i, 1);
    } else {
      console.log("That item isn't on the list.");
    }
  }
}

function viewList(){
  var listElement = document.getElementById("output")
  var innerHtml = "<ul>"

  for (var i = 0; i < groceryList.length; i++) {
    if (groceryList.length == 0) {
      return;
    } else {
      innerHtml =  innerHtml  + "<li>" + groceryList[i] + "</li>"
    }
  }

  innerHtml = innerHtml + "</ul>"
  listElement.innerHTML = innerHtml;
}

var groceryList = [];
var list = prompt('Welcome to the GROCERY LIST!  Would you like to make a list? y/n')
list = list.toLowerCase();

while (true) {
  if (list === 'n') {
    break;
  } else if (list === 'y') {
    item = prompt('What grocery item would you like to add to the list?')
    addItem(item);
    viewList();
  }
}
