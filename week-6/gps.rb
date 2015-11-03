# Your Names
# 1) Brian
# 2) James

# We spent 1.25 hours on this challenge.

=begin
REFLECTION
What did you learn about making code readable by working on this challenge?
- I learned how important having semantically logical variable names is. Without good naming syntax it
is very difficult to interpret what should be happening when.

Did you learn any new methods? What did you learn about them?
- Didn't learn any new methods, but was reminded about how best to use the raise argument by basically
putting it all one line line as an if statement.

What did you learn about accessing data in hashes?
- The easiest way to access hash values is to just call hash[key].

What concepts were solidified when working through this challenge?
- I'd say the concept / importance of psuedocoding was solidified again. This really showed how
relatively simple code can get ugly quick with poor planning and smelly code.

=end
# Bakery Serving Size portion calculator.

#defining a method that takes two inputs
def serving_size_calc(item_to_make, order_quantity)
  #defining a Hash called library that has keys which are items and quantities that we think are serving sizes per unit.
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  #creating a variable that starts at 3 and later iterates down to zero
  error_counter = 3

  #iterating through all items within our hash and doing something
  library.each do |food|
    #library[food] is actually going to return a key-value pair
    #will need to modify this when come back
    if library[food] != library[item_to_make]
      p error_counter += -1
    end
  end

  #determining how the iteration will end
  if error_counter > 0
    #intend to fire this error when item_to_make is not library
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  #returns value at given key input
  serving_size = library.values_at(item_to_make)[0]
  #calculates the batches necessary to produce enough servings
  #modulo operator probably not right(?)
  serving_size_mod = order_quantity % serving_size

  case serving_size_mod
  when 0
    #order_quantity/serving_size is dividing the quantity desired by the number of servings per batch.
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    #if there is a remainder, we will do the same division but then tell user they have XX leftoer pieces. complete the string or additional recommendations.
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

########REFACTORED

def serving_size_calc(item, order_quantity)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}

#   if menu[item] == nil
  raise ArgumentError.new("#{item} is not a valid input") if menu[item] == nil
#   end

  servings_per_batch = menu[item]
  serving_size_remainder = order_quantity % servings_per_batch

  case serving_size_remainder
  when 0
    return "Calculations complete: Make #{order_quantity/servings_per_batch} of #{item}"
  else
    return "Calculations complete: Make #{order_quantity/servings_per_batch + 1} of #{item}, you have #{servings_per_batch-serving_size_remainder} leftover items."
  end
end

#DRIVER CODE
p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
