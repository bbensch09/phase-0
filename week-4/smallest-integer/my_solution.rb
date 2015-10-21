# Smallest Integer

# I worked on this challenge by myself.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

#ITERATED VERSION
      # def smallest_integer(list_of_nums)
      #   sorted = false
      #   until sorted == true
      #     sorted = true
      #     (list_of_nums.length - 1).times do |i|
      #       #test to see if the current item is greater than the next item
      #       if list_of_nums[i] > list_of_nums[i+1]
      #         #if current is greater than next, switch their places, and consider sorting process incomplete (false); move to the next one.
      #         list_of_nums[i], list_of_nums[i+1] = list_of_nums[i+1], list_of_nums [i]
      #         sorted = false
      #       end
      #     end
      #   end
      #   return list_of_nums[0]
      # end

      # #test example
      # #puts smallest_integer([1,2,3,4,-5])

#REFACTORED VERSION
def smallest_integer(list_of_nums)
  list_of_nums.sort!
  # ALT: this explicitly defines sort as ascending X to Y
  #     list_of_nums.sort! {|x,y| x<=>y}
  return list_of_nums[0]
end