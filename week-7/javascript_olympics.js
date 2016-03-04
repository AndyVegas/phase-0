// JavaScript Olympics

// I paired with Kevin Perkins on this challenge.

// This challenge took me 1.5 hours.




// Bulk Up


var sarah = {
  name: "Sarah Hughes",
  event: "Ladies' Singles",
};

var steve = {
  name: "Steve Jobs",
  event: "Computing",
}

var athletes = [sarah, steve]

function addWin(list) {
  
  var print = function(person) {
  console.log(person.name + " won the " + person.event)
}
  
  for (var i = 0; i < list.length; i++) 
    list[i].win = print(list[i]) 
};

addWin(athletes)




// Jumble your words


var string = "Hello World!";
function reverse (value) {
  console.log(value.split('').reverse().join(''))
}
reverse(string)



// 2,4,6,8

var array = [2 , 3, 4, 4, 5, 6, 6, 6, 7, 7, 88]

function evens(num) {
  if (num % 2 === 0) {
    return num
  } else {
    return ''
  }
}
  
  
var evens_array = array.filter(evens)

console.log(evens_array)


// "We built this city"


function Athlete(name, age, sport, quote) {
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection


// What JavaScript knowledge did you solidify in this challenge?
// A JavaScript object is a collection of named values.  In object literal notation, an object description is a set of comma-separated name/value pairs inside curly braces. Functions can hold anything a normal variable can hold… strings, numbers, booleans, arrays, or objects.  I also learned that the filter method works a bit like .map in Ruby, returning a new array.  

// What are constructor functions?
// When we want more than a single object - like an "object type" - we can create that using an object constructor function:

function person(first, last, favefood, favenut) {
    this.firstName = first;
    this.lastName = last;
    this.favefood = age;
    this.favenut = eye;
}
var myFriend = new person("Tom", "Purty", "ribs", "cashew");
var myFriend = new person("Jillian", "Javadrinker", "lobster", "almond");


// How are constructors different from Ruby classes (in your research)?
// They are similar for sure.  In Ruby classes are objects and act like any other object, whereas a constructor in JS is a function.  Unnamed functions created with the Function() constructor are called anonymous functions.

