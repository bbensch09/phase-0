# Largest Integer

# I worked on this challenge by myself.

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
#ITERATED VERSION
  # def largest_integer(list_of_nums)
  #         sorted = false
  #         until sorted == true
  #           sorted = true
  #           (list_of_nums.length - 1).times do |i|
  #             #test to see if the current item is LESS than the next item
  #             if list_of_nums[i] < list_of_nums[i+1]
  #               #if current is LESS than next, switch their places, and consider sorting process incomplete (false); move to the next one.
  #               list_of_nums[i], list_of_nums[i+1] = list_of_nums[i+1], list_of_nums [i]
  #               sorted = false
  #             end
  #           end
  #         end
  #         return list_of_nums[0]
  #       end

  #test example
  #puts largest_integer([-1,-2,-30,-4,-5])

# REFACTORED VERSION
# def largest_integer(list_of_nums)
#  list_of_nums.sort! {|x,y| y<=>x}
# return list_of_nums[0]
# end

#FULLY REFACTORED VERSION
def largest_integer(list_of_nums)
   list_of_nums.max {|x,y| x<=>y}
end

