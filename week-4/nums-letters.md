###What does puts do?
puts simply means “put string” and it writes onto the screen whatever comes after it.


###What is an integer? What is a float?
An integer is a number without a decimal point.  A number with a decimal point is called a floating-point number or float.


###What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Integer division gives you perfectly round numbers.  For example:
10/3 = 3  (the more accurate float answer would be 3.3333333333)


###Mini-challenges:
```
week-4 [ruby-intro] :> irb
irb(main):002:0> puts "hours in a year"
hours in a year
=> nil
irb(main):003:0> 24 * 365
=> 8760
irb(main):004:0> print "minutes in a decade"
minutes in a decade=> nil
irb(main):005:0> (60*24)*365*10
=> 5256000
```

###Links to exercise solutions:

**Defining Variables**
https://github.com/AndyVegas/phase-0/blob/master/week-4/defining-variables.rb

**Simple String Methods**
https://github.com/AndyVegas/phase-0/blob/master/week-4/simple-string.rb

**Local Variables and Basic Arithmetical Operations**
https://github.com/AndyVegas/phase-0/blob/master/week-4/basic-math.rb


###How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby uses floats (a number with a decimal - 4.566) or integers (a whole number with no decimals - 501).  Ruby includes all the basic math operators: + addition, - subtraction, * multiplication, / division, ** (to the) power, and % modulus which all work like on a calculator. 


###What is the difference between integers and floats?
A float is a number with a decimal - 4.566 and an integer is a whole number with no decimals - 501.


###What is the difference between integer and float division?
If you use two integers for Ruby division, you will get an integer (whole number) result.  By adding a .0 and making one of the numbers a float, you’ll get the full result with remainder.
9 / 5  #=> 1
9.0 / 5  #=> 1.8
9 / 5.0  #=> 1.8


###What are strings? Why and when would you use them?
A string is a sequence of characters enclosed by quotes or double quotes.  Examples of strings:

’This is a simple Ruby string’ 
“AND SO IS THIS”
“10000”

Strings are objects that are used all the time, mostly for situations needing text, as opposed to numbers.  You call methods on strings.  


###What are local variables? Why and when would you use them?
Variables are a way to store or assign an object with a name.  The first letter must be lowercase and it should have a descriptive name (my_own_variable).  Variables can point to any kind of object, except other variables.  Local variables only exists within their scope or current block as opposed to variables with @ in front which are instance variables.  


###How was this challenge? Did you get a good review of some of the basics?
I enjoyed this.  I spent a lot of time learning Ruby before my DBC interview, and I feel good about my retention of that.  This was a fun review.  
