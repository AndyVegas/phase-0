What does puts do?
puts simply means “put string” and it writes onto the screen whatever comes after it.


What is an integer? What is a float?
An integer is a number without a decimal point.  A number with a decimal point is called a floating-point number or float.


What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
Integer division gives you perfectly round numbers.  For example:
10/3 = 3  (the more accurate float answer would be 3.3333333333)

Mini-challenges:
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