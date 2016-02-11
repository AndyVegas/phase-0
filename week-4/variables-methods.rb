#Full name greeting: Write a program that asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.

puts "Hi!  What is your first name?"
first_name = gets.chomp.capitalize

puts "Hello, " + first_name + ", what is your middle name?"
middle_name = gets.chomp.capitalize

puts "Wow! " + first_name + " " + middle_name + "! That's a crazy name!  What is your last name??"
last_name = gets.chomp.capitalize

puts "OK, so your full name is " + first_name + " " + middle_name + " " + last_name + "!"

#Bigger, better favorite number: Write a program that asks for a person's favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better number.

puts "Hey you!  What's your favorite number?"
fav_num = gets.chomp.to_s
better = fav_num.to_i + 1

puts "Well... that's not bad, but you've gotta admit " + better.to_s + " is a much bigger and better number, amirite??!"

=begin
Release 6: Reflect

How do you define a local variable?
Local variables start with a lower case letter or an underscore and are used to assign names to objects.  They can also be reassigned like so:
```
composer = 'Mozart'
puts composer + ' was "da bomb", in his day.'

composer = 'Beethoven'
puts 'But I prefer ' + composer + ', personally.'
```

How do you define a method?
Methods, as per Chris Pine’s technical definition, are “things that do stuff” - a named, executable routine whose execution the object has the ability to launch.  Methods in Ruby can take zero or more arguments (in parenthesis) or a variable number of arguments.  Most of Ruby programming involves objects and the messages that are sent to them - specifying things we want the objects to do (defining methods) or asking the object to do those things (by calling the methods)

What is the difference between a local variable and a method?
They are completely different.  In this example, the local variable is “composer” and the method is “puts”:
```
composer = 'Mozart'
puts composer + ' was "da bomb", in his day.'

composer = 'Beethoven'
puts 'But I prefer ' + composer + ', personally.'
```

How do you run a ruby program from the command line?
You type “ruby <filename.rb>” in the command line.

How do you run an RSpec file from the command line?
You type “rspec <spec-file-name.rb>” #using the filename of the spec file.

What was confusing about this material? What made sense?
I had some confusion with the “Format an address” exercise because I added an extra space after the period in the string.  I should have spotted it sooner but I didn’t, and continually got a failure.  The math problems all made sense and the Chris Pine book with it’s simplified prose helps alot.  
=end