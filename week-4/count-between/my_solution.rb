# Count Between

# I worked on this challenge by myself.

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

# def count_between(list_of_integers, lower_bound, upper_bound)
#   count = 0
#   i=0
#   while i < list_of_integers.length
#     if list_of_integers[i] >= lower_bound && list_of_integers[i] <= upper_bound
#       count = count +1
#     end
#     i +=1
#   end
#   return count
# end

#test
#count_between([-10, 1, 2], 0, 100)

#REFACTORED
def count_between(list_of_integers, lower_bound, upper_bound)
  #this just checks the inputs to make sure the lower bound is lower than upper
  return 0 if lower_bound > upper_bound
  #this uses the count function and defines a range as betw lower and upper, and iterates through each element and asks whether or not its included in the range.
  list_of_integers.count{ |i| (lower_bound..upper_bound).include?(i)}
end