# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Abe & Fatma.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an array of any length (2, 4, 6)
# Output: a float (12)
# Steps to solve the problem.


# 1. total initial solution
def total (array)
  sum = 0
  array.each do |i|
    sum + i
  end
  return sum
end

# Note that the below enumerated method works in Ruby on Rails, but not ruby
def total(array)
  array.sum
end


# 3. total refactored solution

def total(array)
  array.inject(0) {|sum, i|  sum + i }
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: an array of words without spaces
# Output: a sentence with spaces and a period at the end
# Steps to solve the problem.
    #combine all of the words together
    #insert spaces between words
    #insert a period at the end

# 5. sentence_maker initial solution

def sentence_maker (array)
  sentence = ""
  array.each do |i|
    sentence =  sentence + i.to_s + " "
  end
  sentence = sentence.capitalize.chop + "."
end


# 6. sentence_maker refactored solution
def sentence_maker(array)
  result = array.join(' ')
  result = result.capitalize + "."
end

