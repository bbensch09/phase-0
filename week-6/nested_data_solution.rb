=begin
REFLECTION
What are some general rules you can apply to nested arrays?
- In general to call values you simply use a 2nd/3rd/4th bracket notation after the first one in order to retrive values from the 2nd/3rd/4th level inner arrays.

What are some ways you can iterate over nested arrays?
- pretty much any enumerable method used for iteration normally can be used over a nested array, you just have to nest the method calls within each other. Because the "do end"'s and/or { } can get confusing wiht many layer of nesting, we found that it was slightly easier to use the { } syntax, because then you're not confused by the presence of ends that are attached to if statements.

Did you find any good new methods to implement or did you re-use one you were already familiar with?
- We reused the map! destructive method mostly.

What was it and why did you decide that was a good option?
- It basically goes through each element in the array and executes your block of code on it, allowing you to modify the element as you wish.

=end
# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
# CORRECT
# p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

# CORRECT
# p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
# CORRECT
# p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! { |element|
  if element.kind_of?(Array)
    element.map! { |inner| inner += 5 }
  else element += 5
  end
}

 # p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
# startup_names = ["bit", ["find", "fast"]]


startup_names.map!  { |element|
    if element.kind_of?(Array)
      element.map! { |inner| if inner.kind_of?(Array)
            inner.map! { |inner3| inner3.to_s + "ly"}
          else  inner.to_s + "ly" end
      }
    else element.to_s + "ly"
  end
}

p startup_names