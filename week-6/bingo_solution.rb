# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 1.25 hours on this challenge. start 145pm

#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  - I actually did not like the 'outline' approach of pseudocoding. Namely, it was confusing in the
   instructions why we needed to have an explicit call method. Maybe I didn't interpret the
   instructions well, but it seemed redundant to take an input of "G85" and have to parse that into "G"
   and 85. Not difficult, but also didn't teach us anything new, and was confusing why we needed to
   pseudocode for that.

What are the benefits of using a class for this challenge?
 - A class was better so that we could call different types of methods on the class object. By making
  the entire board's data accessible at the class level, we could iterate through and replace numbers
   as needed.

How can you access coordinates in a nested array?
 - You simply reference the index position of the outer array first, followed by the inner array, such
 as array[2][0], which will call the first inner value in the 3rd outer array.

What methods did you use to access and modify the array?
 - I used #each a few times, as well as #join and #to_s and #to_i to make sure my number were numbers
 and strings were stings.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
 - The only real new method I used was #join. I'd seen it once before in researching the Ruby docs but
  hadn't actually used it before, and it made printing the out put in a humand readable grid format far
   easier. #join basically takes an array and concatenates it the elements by joining them together
   with any type of separator you choose, in this case just a blank space.

How did you determine what should be an instance variable versus a local variable?
- I basically made everything instance variables. This might not be ideal, but it very much worked.

What do you feel is most improved in your refactored solution?
  - I don't think I had too much smelly code in my initial solution, so nothing major was improved.
   Just was able to take out a few things like the else = 'no match' which I was only using to test
   my code as I went.

=end

# Release 0: Pseudocode
# Outline: Define our class structure and necessary call, check, and replace methods.

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #create a simple method ('call') that takes as input two args (letter,number) and makes them accessible throughout the class.

# Check the called column for the number called.
  #need to create a method ('check') that does a few things: translate letter into column number, which will represent the nested array index position, and then loop through each array and check to see if row[index#] == called_number

# If the number is in the column, replace with an 'x'
  #will want to create a method ('replace'), and it will rewrite the matched value as equal to 'x'; will probably want all values in the board accessible using an attr_accessor designation, and then if we find a match,

# Display a column to the console
  #print the board in a visually friendly matter

# Display the board to the console (prettily)
  #print the board in a visually friendly matter by converting to strings and concatenating spaces and returns as necessary

# Initial Solution

class BingoBoard
  attr_accessor :board

  def initialize(board)
    @bingo_board = board.to_a
  end

  def call(input)
    @letter = input.to_s[0]
    @number = input.to_s[1..2].to_i
    p @letter
    p @number
  end

  def check
    @number = number.to_i
    @column_key = ['B','I','N','G','O']
    @column = @column_key.index(@letter.to_s)
    @bingo_board.each do |row|
      if row[@column] == @number
        row[@column] = 'X'
        else 'no match'
      end
    end
    @bingo_board.each do |row|
      puts row.each { |n| n.to_s }.join(" ")
    end
  end
end

# Refactored Solution

class BingoBoard
  attr_accessor :board

  def initialize(board)
    @bingo_board = board
  end

  def call(input)
    @letter = input.to_s[0]
    @number = input.to_s[1..2].to_i
    p @letter
    p @number
  end

  def check
    @column_key = ['B','I','N','G','O']
    @column = @column_key.index(@letter.to_s)
    @bingo_board.each do |row|
      if row[@column] == @number
        row[@column] = 'X'
      end
    end
    @bingo_board.each do |row|
      puts row.each { |n| n.to_s }.join(" ")
    end
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call("G65")  #=> find match at board[1][4]
new_game.check
new_game.call("G89")
new_game.check
new_game.call("G8")
new_game.check
new_game.call("G68")
new_game.check
new_game.call("G80")
new_game.check


