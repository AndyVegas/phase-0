// ASSIGNMENT 7.8 JavaScript Telephone 

// Andrew Crowley

// Release 4: Refactor and Translate to User Stories

// Here we are trying to do some basic math.  The code below will take a group of numbers, however many, and all them all up to produce the sum.


var numberArray = [2,2,3,4,7,6,100,8];
function sum (numbers) {var total = numbers.reduce(function(a,b) {return a + b;});
  console.log(total);
  // var mean = total/numberArray.length;
  // console.log(total);
};
sum(numberArray);

// This next section of code adds up the group of numbers (like above), gets the total (sum) and divides that sum by the amount of numbers in the original group.  In this case there are eight numbers in the group.  This is called the "average" or "mean".

function mean (numbers) {
  var arraySize = numbers.length;
  var total = numbers.reduce(function(a,b){
    return a + b;
  });
  var mean = total/arraySize
  console.log(mean);
  }
mean(numberArray);

// The code below is attempting to find the number in the middle of a group of numbers.  It first arranges the numbers in numerical order.  If, like in this case, there is no "middle" number because there are an even number of numbers, the median is the mean (average) of the middle two values.  

function median (numbers) {
  numbers.sort(function (a,b){return a-b;} );
  var centerIndex = Math.floor(numbers.length/2)
  if(numbers.length % 2)
    return numbers[centerIndex];
  else 
    return (numbers[centerIndex-1] + numbers[centerIndex])/2;
  }
console.log(median(numberArray));


