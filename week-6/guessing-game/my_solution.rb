# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 0.75 hours on this challenge. start 1125am; finish 12:10pm
=begin
#REFLECTION
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
I guess I'd say that instance variables represent the fact that real world objects (people, animals, things) often have similarities, and you can define the expectations about an object (all people will have two hands and two feet with 10 fingers) once, and then be able to reuse that definition with as many instances as you like.

When should you use instance variables? What do they do for you?
You should use instance variables whenever you want to define a variable within a class based on the initializing arguments, and to be able to use that variable throughout the class.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
With flow control you basically just have to walk through the if --> elsif --> else logic yourself and make sure that you don't accidentally set it up so that you get false positives or negatives. I've used if logic a ton before in Excel, so this isn't particularly difficult for me.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
I've heard that symbols are more efficient at run-time because of how they are actually computed and stored as fixed constants (I think?), and so generally it's better to use symbols when creating hashes rather than string based keys. That being said, I shoudl probably read more on the topic because I'm only ~60% comfortable with that explanation.

=end

# Pseudocode

# Input: take an initial answer upon initialization; then take guess numbers as inputs for each guess
# Output: store a game_solved state throughout the program that only returns true once solved; also, for each guess, return a value telling the guesser whether they are too high or two low.
# # Steps:
# 1) store answer & set initial  state to false
# 2) evaluate each guess and build if logic for whether guesses are high or low
# 3) update game status with each guess


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    $game_solved = false
  end

  def guess(number)
    if number < @answer.to_i
      $game_solved = false
      p :low
      elsif number > @answer.to_i
      $game_solved = false
      p :high
      else
      $game_solved = true
      p :correct
    end
  end

  def solved?
    p $game_solved
  end
end

# Refactored Solution
# The only refactoring I was able to do was to remove the two '.to_i' methods I'd unecessarily applied earlier when I was getting and 'undefined method' error. It turned out to be due to the fact that I was incorrectly using the @instance variable designation for the guess number. In my initial solution, I got the code working by making game_solved a global variable, but later realized that an instance variable was more appropriate, so also fixed that.

class GuessingGame
  def initialize(answer)
    @answer = answer
    @game_solved = false
  end

  def guess(number)
    if number < @answer
      @game_solved = false
      p :low
      elsif number > @answer
      @game_solved = false
      p :high
      else
      @game_solved = true
      p :correct
    end
  end

  def solved?
    p @game_solved
  end
end


#DRIVER CODE
game = GuessingGame.new(10)
game.solved?   # => false

game.guess(5)  # => :low
game.guess(20) # => :high
game.solved?   # => false
game.guess(10) # => :correct
game.solved?   # => true

