# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode



# Initial Solution

def reverse_words(string)
  array = string.split(" ")
  reversed_array = array.each{|element| element.reverse!()}
  final = reversed_array.join(" ")
  p final
end

# Refactored Solution


def reverse_words(string)
  return string.split(" ").each{|element| element.reverse!()}.join(" ")
end

# Reflection
=begin
What concepts did you review in this challenge?
We reviewd some basic array methods like .split and .join, as well as the most common enumerable #each.

What is still confusing to you about Ruby?
We breezed through this review challenge and weren't really confused by anything.

What are you going to study to get more prepared for Phase 1?
I'm going to review javascript much more, because I feel far less comfortable there than with Ruby, where I think I'm pretty well prepared for Phase 1.

=end