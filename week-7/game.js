// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
  // You get the call to take over for an injured Steph Curry in a big GS Warriors game.  You have to win the game
// Overall mission: Make a game winning shot
// Goals: Make a 3 pointer to win the game
// Characters: One player, shooting a J 
// Objects: Player 
// Functions: 
// Player (name, age)
// Pseudocode
// Create a function for the player with name and age 
// Create a function for the shot - random points
// 
//
//
//

// Initial Code

function Person(name, age) {
  this.name = name;
  this.age = age;
}

console.log("I will now ask you for your name.");
  var name = prompt("Enter your name");
console.log("Hello ".concat(name, ". How are you?"));

var age = prompt("What's your age");
  if(age < 10) {console.log("You might too young to play this game, but I won't stop you!");}
  else {console.log("Let's play!");}

console.log("You are at a Golden State Warriors basketball game, and Steph Curry gets injured");
console.log("Suddenly, the announcer says, 'Who wants to replace Curry?'");

userAnswer = prompt("Can you fill Steph's shoes?  yes / no?");

  if (userAnswer = "yes") {console.log("Lace up your shoes and take an important shot...");

  function jumper() {
  var shot = Math.floor(Math.random() * 3 ) + 1;
  return "You hit a " + shot + " pointer!"
}
}
  else{console.log("Oh no! The Warriors have gone bankrupt now, and it's all thanks to you!");
}

}

var feedback = prompt("Please rate this game from 1-10");
  if (feedback < 8) {console.log("Thank you! You've got a Golden State of mind!");}
  else {console.log("I'll keep practicing my code...");}


var winner = function jumper() {
  if (shot === 3) {
    return "You win!";
  } else if (shot === 2) {
    return "Tie game!  Overtime!";
  } else if (shot === 1) {
    return "You lose!";
  }
}


jumper();
winner.jumper();


// Refactored Code

// npm modules

// var inquirer = require("inquirer");

// console.log("I will now ask you for your name.");
// inquirer.prompt([{
//   type: "input",
//   name: "name",
//   message: "Enter your name",
// }], function(answers) {
//      console.log("Hello " + answers["name"] + ". How are you doing?");
//      theConfirmation(answers);
// });

// theConfirmation = function(answers) {
//   inquirer.prompt([
//   {
//     type: "confirm",
//     name: "confirmation",
//     message: "Are you ready to play?",
//   },
//   {
//     type: "input",
//     name: "age",
//     message: "What is your age",
//     when: function(answers) {
//       return answers["confirmation"];
//     },
//   }], function(answers) {
//         if(answers["age"] < 10) {
//           console.log("You might too young to play this game, but I won't stop you!");
//         }
//         else {
//           console.log("Let's play!");
//         }

//         theGame(answers);
//   });
// }

// theGame = function(answers) {
//   console.log("You are at a Golden State Warriors basketball game, and Steph Curry gets injured");
//   console.log("Suddenly, the announcer says, 'Who wants to replace Curry?'");
//   inquirer.prompt([
//     {
//       type: "confirm",
//       name: "fillStephsShoes",
//       message: "Can you fill Steph's shoes?"
//     }], function(answers) {
//       if(answers["fillStephsShoes"]) {
//         console.log("Lace up your shoes and take a three pointer!  You made it!  The crowd goes wild!")
//       }
//       else {
//         console.log("Oh no! The Warriors have gone bankrupt now, and it's all thanks to you!")
//       }

//       theFeedback(answers);
//     });
// }

// theFeedback = function(answers) {
//   inquirer.prompt([
//     {
//       type: "input",
//       name: "feedback",
//       message: "Please rate this game from 1-10"
//     }], function(answers) {
//       if (answers["feedback"] < 8) {
//         console.log("Thank you! You've got a Golden State of mind!");
//       }
//       else {
//         console.log("I'll keep practicing my code...");
//       }
//     });
// }






// Reflection

// What was the most difficult part of this challenge?
// This was tough... Just deciding what kind of game to create and how to go about it / how in depth.  I did my pseudocode but had to change it early on because I was unable to create what I wanted, and I'm not sure I have full understanding of the way functions work.  

// What did you learn about creating objects and functions that interact with one another?
// Objects can be created with literal (var player = {}) or object constructor notation (var player = new Object();).  Objects consist of a set of key/value pairs, not unlike hashes in Ruby.  If a function is part of an object, it is called a method.  


// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// "This" is a keyword used inside functions and objects.  Under the hood, the "this" keyword is a reference to the object that the function is created inside.  

// How can you access and manipulate properties of objects?
// Properties can be accessed and manipulated via the property name or key.  For example:

var player = {
  name: "Shaq O'Neal";
  height: "7 feet"
};

player.height // would retrieve "7 feet"


function Players (name, height) {
  this.name = name;
  this.height = height;
}

var player1 = new Players ("Mike Jordan", "6 foot 6")
var player2 = new Players ("Shaq O'Neal", "7 feet")

player2.height // would retrieve "7 feet"

// Careful attention must be placed on the use of semi colons with these two examples.  