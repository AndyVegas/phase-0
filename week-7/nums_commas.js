// Your previous Ruby content is preserved below:

// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Noah Schutte.
// separateComma(1569743) == "1,569,743"
// Pseudocode

// 1. Convert integer to array of strings
// 2. Reverse array
// 3. for i = 0, i < array.length, i ++
// 4. fourth index will be a ","
// 5. reverse, join, and return

// What we want to do:
// starting int = 1234
// convert to strings and reverse = ["4","3","2","1"]
// push in a comma = ["4","3","2",",","1"]
// re-reverse and join = 1,234

// Initial Solution
// separateComma = function(){}

function separateComma(number) {
  var number = number.toString().split("").reverse();
  var result = [];
  var i = 0
  while ( i < number.length ) {
    result.push(number[i]);
    result.push(number[i+1]);
    result.push(number[i+2]);
    if (i - number.length > -4) { 
      break; 
    };
    result.push(",");
    i = i + 3;
  }
  console.log(result.reverse().join(""));
};


// Refactored Solution

function separateComma(number) {
  var number = number.toString().split("").reverse();
  var result = [];
  var i = 0;
  while ( i < number.length ) {
    if (i % 3 === 0 && i - number.length < 0 && i != 0) { 
      result.push(",");
    }
    result.push(number[i]);
    i++;
  }
  console.log(result.reverse().join(""));
}




// Your Own Tests (OPTIONAL)

separateComma(1234567890123)




/*

Release 5: Reflect

What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
We approached the problem the same way as in Ruby!  While I'm sure there are multiple ways to come at this challenge, reversing and working from the back indexes seems to be the most straightforward, to me.  


What did you learn about iterating over arrays in JavaScript?  What was different about solving this problem in JavaScript?
I learned that iterating over arrays in JS is very similar to Ruby.  The biggest thing is remembering to add the semi colon, instead of keyword "end" and making sure to use parenthesis in places you wouldn't in Ruby.


What built-in methods did you find to incorporate in your refactored solution?
We used .toString(), .split(""), and .reverse(), as well as .push and .join... and initially a break statement for our while loop.  We also used the logical operator &&, twice in one loop in fact!

*/