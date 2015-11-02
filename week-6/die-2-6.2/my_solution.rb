# Die Class 2: Arbitrary Symbols

# I worked on this challenge by myself.
# I spent 0.5 hours on this challenge.

# REFLECTION
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
It was very very similar and didn't take much more logic. I knew off the bat that I'd need to use a #count or #length method to return the number of sides since I wasn't using integers anymore. The only real quirks were remembering that I didn't need to add 1 to my result since previously the rand() function returned values including 0, which I didn't want, whereas that was now okay.

What does this exercise teach you about making code that is easily changeable or modifiable?
It should be very straight-forward to modify a program like this if your original code is well-written.

What new methods did you learn when working on this challenge, if any?
Didn't learn any new methods explicitly. But good quick review.

What concepts about classes were you able to solidify in this challenge?
Solidified the understanding of using instance variables with the @variable_name designation.

=end
# Pseudocode

# Input: an array of strings
# Output: a random result that is one of those strings.
# Steps:
# 1) generate a random number between 1 and the number of sides
# 2) return the label associated with that random number


# Initial Solution

class Die
  def initialize(labels)
    unless labels.count >=1
      raise ArgumentError.new("Your die must contain at least 1 side.")
    end
    @labels = labels
  end

  def sides
      return @labels.count
  end

  def roll
    result = rand(@labels.count)
    @labels[result]
  end
end

# Refactored Solution
#The only refactoring I was able to find was in line 51 I removed the creation of a result variable, and just call the labels array and directly input the random number as the index number.
class Die
  def initialize(labels)
    unless labels.count >=1
      raise ArgumentError.new("Your die must contain at least 1 side.")
    end
    @labels = labels
  end

  def sides
      return @labels.count
  end

  def roll
    @labels[rand(@labels.count)]
  end
end


#TESTING DRIVER CODE
my_die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
my_die.sides # still returns the number of sides, in this case 6
p my_die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'],
