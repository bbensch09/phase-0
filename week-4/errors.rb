# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
#line number 8
# 3. What is the type of error message?
#syntax error
# 4. What additional information does the interpreter provide about this type of error?
#The interpreter received an unexpected '=' when it was expecting an end-of-input.
# 5. Where is the error in the code?
#Th intepreter didn't expect the '=' before cartmans_phrase
# 6. Why did the interpreter give you this error?
#In order to assign a variable, the variable name must come first, so it should read cartmans_phrase = XXX + YYY.

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end #fixed by adding this line
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
#line 183 (end of document).
# 3. What is the type of error message?
#syntax error
# 4. What additional information does the interpreter provide about this type of error?
#unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
#The actual error occrued on line 29, which needed to have an end to stop the while loop.
# 6. Why did the interpreter give you this error?
#The while loop needs to have an end. Without it, the interpreter has the cartman_hates method definition go on through the rest of the document, and never sees a final 'end'.

# --- error -------------------------------------------------------

south_park = 'old'

# 1. What is the line number where the error occurs?
#line 49
# 2. What is the type of error message?
#NameError (I think)
# 3. What additional information does the interpreter provide about this type of error?
#It says there is an undefined local variable or method called 'south park'.
# 4. Where is the error in the code?
#The error is on line 49 and is the lack of an '= value' to complete the variable definition.
# 5. Why did the interpreter give you this error?
#The error is the fact that we've listed a variable name but not defined it by setting it equal to an initial value.

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
#line 64
# 2. What is the type of error message?
#NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
#undefined method `cartman' for main:Object
# 4. Where is the error in the code?
#It is immediately on line 64 with the lack of 'def'.
# 5. Why did the interpreter give you this error?
#The interpreter thinks that we're calling a method because of the '()', but we haven't actually defined that yet, and so need to insert 'def' at the start of the line, as well as a corresponding 'end' afterwards.
# --- error -------------------------------------------------------

def cartmans_phrase(arg)
  puts "I'm not fat; I'm big-boned!"
  puts "Also, " + arg
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#line 80
# 2. What is the type of error message?
#Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
#It doesn't say expicitly, but the error is in method definition.
# 5. Why did the interpreter give you this error?
#We've given the method an argument when calling cartmans_phrase, but the method definition doesn't actually accept arguments, so we have an argument mismatch.
#

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Go to hell Kyle.")

# 1. What is the line number where the error occurs?
#line 100
# 2. What is the type of error message?
#Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
#the actual error is in line 104 where we don't include any arguments.
# 5. Why did the interpreter give you this error?
#This time we didn't give an argument to the method when calling it, even though the method definition requires an argument.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!','Kyle')

# 1. What is the line number where the error occurs?
#line 121
# 2. What is the type of error message?
#Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
#Actual error is in line 125, where we only included 1 of the 2 arguments.
# 5. Why did the interpreter give you this error?
# The number of arguments when calling a method MUST match the # of arguments in the method defintion.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"
puts "Respect my authoritay!" *5 #fixed

# 1. What is the line number where the error occurs?
#line 140
# 2. What is the type of error message?
#Type Error
# 3. What additional information does the interpreter provide about this type of error?
#String can't be coerced into Fixnum
# 4. Where is the error in the code?
#The error is with the '*"'
# 5. Why did the interpreter give you this error?
#We are trying to print the string 5 times, but to do so we must have the multiplier follow the string, because otherwise the interpreter is trying to multiply an integer by a string, which doesn't make sense.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#line 156
# 2. What is the type of error message?
#ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#divided by 0
# 4. Where is the error in the code?
#it is in the division symbol '/'
# 5. Why did the interpreter give you this error?
#Pretty straight-forward, you can't divide by zero, since that produces an undefined result.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"
require_relative "variables-method"

# 1. What is the line number where the error occurs?
#line 172
# 2. What is the type of error message?
#LoadError
# 3. What additional information does the interpreter provide about this type of error?
#cannot load such file -- /Users/brianbensch/DBC/GitHub/phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
#The error is with the method being called 'require_relative'.
# 5. Why did the interpreter give you this error?
#This method tells the interpreter to find the file named cartmans_essay.md and to load it into the ruby program. Since that file doesn't exist (or can't be found), it triggers an error.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#Which error was the most difficult to read?
  #The only one I kinda got stuck on was the last one with respect to require relative, because I tried susbstituting with a known file in my directory, but then ended up getting additional errors about that file, without realizing that those errors were being detected outside of the errors.rb file, and because they were rspec files that aren't intended to be run like that.
#How did you figure out what the issue with the error was?
  # I kept playing with it and eventually just tested with one of the files without any rspec testing within it.
#Were you able to determine why each error message happened based on the code?
  #Yes, most were pretty straight-forward.
#When you encounter errors in your future code, what process will you follow to help you debug?
  #Read the error closely, evaluate the line and specific location of error, and when in doubt, do a google search.