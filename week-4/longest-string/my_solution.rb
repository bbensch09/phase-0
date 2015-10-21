
# Longest String

# I worked on this challenge by msyelf.

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


#ITERATED VERSION
  # def longest_string(list_of_words)
  #     sorted = false
  #     until sorted == true
  #       sorted = true
  #       (list_of_words.length - 1).times do |i|
  #         #test to see if the current item is SHORTER than the next item
  #         if list_of_words[i].length < list_of_words[i+1].length
  #           #if current is SHORTER than next, switch their places (so that longest item is first), and consider sorting process incomplete (false); move to the next one.
  #           list_of_words[i], list_of_words[i+1] = list_of_words[i+1], list_of_words [i]
  #           sorted = false
  #         end
  #       end
  #     end
  #     return list_of_words[0]
  # end

  # #test
  # puts longest_string(["blue","me","rubyiscool"])

  #REFACTORED VERSION
    def longest_string(list_of_words)
      list_of_words.max { |a, b| a.length <=> b.length }
    end
    #puts longest_string(["I","me","skiing"])
