# Shortest String

# I worked on this challenge by myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
#ITERATED VERSION
  # def shortest_string(list_of_words)
  #     sorted = false
  #     until sorted == true
  #       sorted = true
  #       (list_of_words.length - 1).times do |i|
  #         #test to see if the current item is longer than the next item
  #         if list_of_words[i].length > list_of_words[i+1].length
  #           #if current is longer than next, switch their places, and consider sorting process incomplete (false); move to the next one.
  #           list_of_words[i], list_of_words[i+1] = list_of_words[i+1], list_of_words [i]
  #           sorted = false
  #         end
  #       end
  #     end
  #     return list_of_words[0]
  # end

  # #test
  # puts shortest_string(["blue","me","skiing"])

  #REFACTORED VERSION
  def shortest_string(list_of_words)
    list_of_words.min { |a, b| a.length <=> b.length }
  end
  puts shortest_string(["I","me","skiing"])
