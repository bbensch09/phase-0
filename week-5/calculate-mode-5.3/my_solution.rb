# Calculate the mode Pairing Challenge

# I worked on this challenge with Fatma and Abe.
# I spent 1 hour on this challenge.
=begin
# 4. Reflection
Which data structure did you and your pair decide to implement and why?
- We took our initial array and built our solution using a hash, since we wanted to take advantage of the fact that hash keys must be unique.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
- Yup, we separated it into fairly straight-forward parts. Even though I think this challenge was slightly more arduous of a mathematical task, we go through it faster.

What issues/successes did you run into when translating your pseudocode to code?
- No major sticking points really. Just a realization that it takes time to lookup and find the right syntax for things. i.e. we knew it'd be possible to return the keys for the max values once we had our hash, but it wasn't quite as simple as we thought to actually get that back. For example, while we thought .max would work fine, we didn't contemplate that their might be multiple values tied for the maximum value.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
- We used the .each method for our primary iteration, and then also used the select method again to find the maximum value(s).

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.


# 0. Pseudocode

# What is the input?
We will take an aray of integers or strings as input.
- We'll then want to iterate through the array and build a hash of unique values. In each cycle of the iteration, we're going to check to see if the key already exists, and if so, we'll increment its value by one, and if not, we will create a new key and give it a value of one.
# What is the output? (i.e. What should the code return?)
- We should be left with a resulting hash that contains a key for all unique elements in our original array, and the number of occurances of each element as its value.
# What are the steps needed to solve the problem?
-create new hash based on iterating through original array
-determine maximum value of new array
-determine the key for that max value

=end
# 1. Initial Solution
# Calculate the mode Pairing Challenge


  def mode(array)
    new_hash = {}
    array.each { |x|
      if new_hash[x] != nil
        new_hash[x] += 1
      else
        new_hash[x] = 1  # creating new key since it is not existing.
      end
      }
    most_common = new_hash.values.max
    result = []
      new_hash.each { |x,y|
        if most_common == y
          result.push(x)
        end
        }
    return result
  end


# # #testing
# my_array = [1,2,3,3,4,4]
# puts mode(my_array)



# 3. Refactored Solution
  def mode(array)
    new_hash = {}
    array.each { |x|
      if new_hash[x] != nil
        new_hash[x] += 1
      else
        new_hash[x] = 1  # creating new key since it is not existing.
      end
      }
    result = new_hash.select{|k,h| h == new_hash.values.max}
    return result.keys
  end

# testing
# my_array = [1,2,3,3,4,4]
# puts mode(my_array)

