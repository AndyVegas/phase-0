# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#{}"Screw you guys " + "I'm going home." = cartmans_phrase

cartmans_phrase = "Screw you guys " + "I'm going home."



# This error was analyzed in the README file.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => line 8
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => The interpreter says it did not expect an "=" sign, rather it expected end-of-input.
# 5. Where is the error in the code?
# => The interpreter did not expect an equals sign between "I'm going home" and cartmans_phrase.
# 6. Why did the interpreter give you this error?
# => cartmans_phrase and the = should be in front of the strings.

# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => It says 188 but I believe the problem is just above here at line 33.
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# => At line 33 this while method needs an "end"
# 6. Why did the interpreter give you this error?
# => Missing an "end".

# --- error -------------------------------------------------------

south_park = 10
puts south_park

# 1. What is the line number where the error occurs?
# => 54
# 2. What is the type of error message?
# => NameError exception. 
# 3. What additional information does the interpreter provide about this type of error?
# => undefined local variable or method `south_park' for main:Object (NameError)
# 4. Where is the error in the code?
# => It is referring to a local variable that doesn't yet exist - south_park.
# 5. Why did the interpreter give you this error?
# => Variables must be assigned to before they can be used.

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
# => 70
# 2. What is the type of error message?
# => Undefined method.
# 3. What additional information does the interpreter provide about this type of error?
# => (NoMethodError)
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
# => The basic Object main does not have a describe method unless we give it one, which is reflected by the error message "undefined method 'cartman' for main:Object".

# --- error -------------------------------------------------------

def cartmans_phrase(x)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 86
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => `cartmans_phrase': wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# => On line 86, parenthesis needed.
# 5. Why did the interpreter give you this error?
# => cartmans_phrase needs to show an argument, as per the call on line 90.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("They killed Kenny!")

# 1. What is the line number where the error occurs?
# => 105
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# => On line 109 where the method is called, we need some parenthesis and an argument.
# 5. Why did the interpreter give you this error?
# => Missing an argument.  



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming', 'Butters!')

# 1. What is the line number where the error occurs?
# => 126
# 2. What is the type of error message?
# => Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# => We need to add a name when calling the method.
# 5. Why did the interpreter give you this error?
# => Only 1 of 2 arguments provided.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# => 145
# 2. What is the type of error message?
# => Type Error
# 3. What additional information does the interpreter provide about this type of error?
# => '*': String can't be coerced into Fixnum
# 4. Where is the error in the code?
# => On line 145 the 5 has to be after the string
# 5. Why did the interpreter give you this error?
# => The order of things has to be correct.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/2


# 1. What is the line number where the error occurs?
# => 160
# 2. What is the type of error message?
# => ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => `/': divided by 0
# 4. Where is the error in the code?
# => The zero means the variable will be zero and that won't work.
# 5. Why did the interpreter give you this error?
# => Anything divided by zero = zero.

# --- error -------------------------------------------------------

require_relative "errors.rb"

# 1. What is the line number where the error occurs?
# => 176
# 2. What is the type of error message?
# => Load Error
# 3. What additional information does the interpreter provide about this type of error?
# => cannot load such file -- /Users/andrewcrowley/phase-0/cartmans_essay.md
# 4. Where is the error in the code?
# => The filename is incorrect.
# 5. Why did the interpreter give you this error?
# => It should be relative - errors.rb.  The cartmans_essay is a made up file.


# --- REFLECTION -------------------------------------------------------
# Which error was the most difficult to read?
# => The last one was tough, because I just wasn't sure what to do with the cartmans_essay.md
#How did you figure out what the issue with the error was?
# => Whenever I see require_relative, I know the file "should" be relative to what I'm working on.
#Were you able to determine why each error message happened based on the code? 
# => Yes, thank goodness for Ruby error messages!  I figured it out within an attempt or two each time.
#When you encounter errors in your future code, what process will you follow to help you debug?
# => Realizing the order in which things should go is key.  Two of the errors above were caused by something simple like changing the direction of the code/phrase.