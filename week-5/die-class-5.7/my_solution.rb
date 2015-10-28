=begin
# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 1 hour on this challenge.


# 4. REFLECTION
What is an ArgumentError and why would you use one?
-An argument error allows you to check and confirm that your inputs are valid based on whatever necessary conditions you require to run your method. You'll generally want to raise your argument error within a class initialize method, so that you can immediately warn/tell user that their input was invalid before it runs through any more of the code.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
- creating new instance variables was new this challenge, as was using the rand method. No real challenges other than felt like I wasn't able to refactor much.

What is a Ruby class?
- A ruby class is an object that contains methods which are automatically inherited by any other objects which are child objects within the class. More or less, it's a set of method and/or variable definitions that all child objects have access to. Object itself is a class, and is in fact the ultimate parent class or superclass.

Why would you use a Ruby class?
- You'd use a class so that you can avoid having to rewrite methods for similar objects. For example, without having the string class, we'd have to manually define things like .length, and .capitalize, and all of the other methods that we've used so far on strings. Because they're already defined as part of the class String, it makes our lives much simpler.

What is the difference between a local variable and an instance variable?
- a local variable can only be used within the method that it is created, whereas an instance variable can be used throughout all methods associated with the class in which the instance is defined. Instance variables are defined with the @variable_name, whereas local variables don't have the @ sign.

Where can an instance variable be used?
- It can be used throughout any other methods within the class in which it is defined.

# 0. PSEUDOCODE

# Input: We will input nothing more than the number of sides we want our die to have.

# Output: We should be able to return the static number of sides we've input, as well as be able to roll the die multiple times and return a random number between 1 and the number of sides inputed. Likewise, if we incorrectly create a new die (i.e. with 0 or negative number of sides), we shouldl return an Argument Error.

# Steps:
1) going to need to define the class as containing a number of sides >= 1. With that will need to research the argument error and determine how to spit back out the appropriate error if the input for sides is incorrect.

2) going to need to use a random number method, which I know I've used before but will need to reconfirm the syntax. Pretty sure it will likely return a value btw 0 and 1, so will probably need to multiple the random output by the number of sides.
rand(max) --> when max is an integer, returns a random integer >= 0 and less than max.
should be able to use rand(max) and add 1 to the result, so that the range of outcomes excludes 0 and contains max

3) return the properly formatted output (rounded to the nearest integer) as the result

# 1. Initial Solution

class Die
  def initialize(sides)
      unless sides >= 1
        raise ArgumentError.new("Your die must contain at least 1 side.")
      end
      @sides = sides
  end

  def sides
    @sides
  end

  def roll
    @result = rand(sides)+1
  end
end
=end


# 3. Refactored Solution

#Really couldn't find much refactoring to do. All I did was actually add "return" to my class method for sides, to make it explicit that I'm simply returning the sides instance variable. I also tried removing the '@sides = sides' from the initialize method, and realized that breaks it and that you must initialize variables within the class's intialize method. I also removed the @result variable and just returned the calculation of the dice roll.

class Die
  def initialize(sides)
      unless sides >= 1
        raise ArgumentError.new("Your die must contain at least 1 side.")
      end
      @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    return rand(sides)+1
  end
end

#TESTING DRIVER CODE
my_die = Die.new(6)
# p my_die.sides
p my_die.roll
p my_die.roll
p my_die.roll
p my_die.roll
p my_die.roll
p my_die.roll

