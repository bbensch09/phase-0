# Pad an Array

# I worked on this challenge with Abe & Fatma.

# I spent 1 hour on this challenge.


# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
- Yes, we broke the problem down into the core pieces of identifying whether new elements needed to be added, adding those, and then returning them.
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
- It was fairly straight-forward, the biggest issue we ran into was for the non-destructive method, discovering that setting variable equalities are "sticky."
Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
- We were successful with the destructive version at first, but were nowhere close on the non-destructive version, because we didn't realize that push was inherently a destructive method.
When you refactored, did you find any existing methods in Ruby to clean up your code?
- The main thing we discovered while working through initial solution was that "while" was simpler and cleaner than using an if + difference calculation.
How readable is your solution? Did you and your pair choose descriptive variable names?
- I think it's fairly readable. We chose semantically logical names.
What is the difference between destructive and non-destructive methods in your own words?
- The non-destructive version creates a new_array by collecting the values of the input array, and modifying those, whereas the destructive array just modifies the input array directly.
=end

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
###destructive
def pad!(array, min_size, value = nil)
  while array.length < min_size
    array.push(value)
  end
  return array
end

####non-destructive
def pad(array, min_size, value = nil)
  new_array = array.collect {|x| x}
  while new_array.length < min_size
    new_array.push(value)
  end
  return new_array
end
# testing output
# my_array = ['alpha','bravo']
# puts my_array
# puts "original my_array below, pad function called below"
# pad(my_array,5)
# puts "print original my_array again below, confirm destrucive?"
# puts my_array

# 3. Refactored Solution

###destructive -- we refactored this from IF to WHILE during initial solution
def pad!(array, min_size, value = nil)
  while array.length < min_size
    array.push(value)
  end
  return array
end

####non-destructive
def pad(array, min_size, value = nil)
  new_array = array.collect {|x| x}
  while new_array.length < min_size
    new_array.push(value)
  end
  return new_array
end
#found a solution similar to below online, but couldn't get it to work, so decided current solution is refactored enough.
# def pad(array, min_size, value = nil)
#   pad!(array.clone, min_size, value = nil)
# end
