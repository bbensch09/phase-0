# REFLECTION

# How do you define a local variable?
  #You define a local variable by simply calling a new variable name using lowercase and underscores separating words, and using a single equals sign (=) to assign the intial variable value.
# How do you define a method?
  #you define methods by starting with 'def [method_name]'' and ending with 'end'.
# What is the difference between a local variable and a method?
  #I belive methods and variables are both objects, but in general a variable is simply an entity that stores value, whereas a methods also stores actions and manipulations of as many other variables or methods as your code needs to incorporate.
# How do you run a ruby program from the command line?
  #You type the command 'ruby + filename.rb'
# How do you run an RSpec file from the command line?
  #You type the command 'rspec + filename.rb'
# What was confusing about this material? What made sense?
  #The syntax of the rspec filenames didn't really make sense to me at first, as I thought I was supposed to run the rspec on both my_solution and the rspec file. Kinda silly in hindsight, but I spent ~10min trying to understand why I was getting a file unfound error. Maybe because I didn't read thoroughly about what the rspec process is for or what it means, I didn't realize until finishing 4.3.1 that rspec is primarily used to check for the expected output of a given method, and requires the solution file to be in the same directory, which is why we went through the process of creating new directories each time with a spec file and a solution file. The math and actual ruby command we're using right now all make perfect sense and are pretty trivial at this point.

#4.3.1 URL: https://github.com/bbensch09/phase-0/blob/master/week-4/address/my_solution.rb

#4.3.2 URL: https://github.com/bbensch09/phase-0/blob/05e5282570284794816f51dd0f5e871533f290c9/week-4/math/my_solution.rb



# puts "Enter your first name:"
# first_name = gets.chomp

# puts "Enter your middle name:"
# middle_name = gets.chomp

# puts "Enter your last name:"
# last_name = gets.chomp

# puts "It's nice to meet you " + first_name + " " + middle_name +  " " + last_name

puts "What's your favorite number?"
num = gets.chomp
num_bigger = num.to_i + 1
puts num_bigger.to_s + " is a bigger and better number"