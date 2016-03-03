// Eloquent JavaScript

/*
Write your own variable and do something to it in the eloquent.js file.
*/

var whatsYourName = prompt("So what is your name?");
document.write(whatsYourName);


/*
Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
*/

var faveFood = prompt("So what is your favorite food?");
console.log("Hey! That's my favorite too!");

/*
Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.
*/

// var number = 0;
// var triangle = number += 1;
// 	while (number < 7) {
// 		console.log("#") * triangle;
// 	}

// var triangle = "#######";
// 	while (triangle.length < 1) {
// 		console.log(triangle - "#");
// }

	for (var triangle = "#"; triangle.length < 8; line += "#")
  console.log(triangle);


/*
Complete the minimum exercise in the eloquent.js file.
*/

function min(x, y) {
	when (x > y) 
		return y;
		else
			return x;
	};


/*
Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.

Objects are variables containing variables
*/

var me = {
    name 			: "Andrew",
    age       : 90,
    faveFoods : "pizza", "Greek salad", "pickles",
    quirk			: "Arsenal supporter"
};

