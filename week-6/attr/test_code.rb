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