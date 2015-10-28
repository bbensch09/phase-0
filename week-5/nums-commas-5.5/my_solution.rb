=begin
# Numbers to Commas Solo Challenge

# I spent 1.5 hours on this challenge.

# 3. Reflection
What was your process for breaking the problem down? What different approaches did you consider?
- I know the basic steps were going to be to count the digits and insert a comma every 3 digits. While I knew the if elsif structure wasn't going to be ideal because it wouldn't work for really large numbers, I figured I would start there, and it turned out to be sufficient into the billions which is all that the RSPEC required.

Was your pseudocode effective in helping you build a successful initial solution?
- Yes, it was fairly effective. During psuedocode, I hadn't considered the complexity of where to begin the first comma and was only considering how many commas I'd need. The modelo seemed perfect until I realized digits divsible by 3 would return zero instead of 3, which made for more messy if logic.

What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
- My own refactoring was pretty simple in that I just removed an unnecessary array definition stage, as well as removed the count of commas, which wasn't actually necessary. The ultimate refactoring solution I found after googling it was much different. It applied a reverse method to avoid the mess of modelo's, and used a clever each_slice enumerable to cycle through blocks of 3 elements at a time.

How did you initially iterate through the data structure?
- I just defined if elsif statements to iterate through and add commas as necessary. This wasn't perfect because I only wrote 3 levels of the iteration, and so it failed at items greater than a trillion.

Do you feel your refactored solution is more readable than your initial solution? Why?
- Yes and no. I don't actually think the one-line refactored solution I found online is very readable, but it is shorter for sure. I like my refactored version, but also acknowledge that its imperfect and would need some more work to make it work for very large numbers.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. PSEUDOCODE
Basic solution would be to use if elsif logic to determine if the number is <1,000 and if not, then is it <1,000,000, and if not, then again test 1,000,000,000; and then to insert commas as appropriate in the string.
The advanced solution would be to be able to do so for ANY number, even something like 10^100. Since I think the basic solution will be hard enough to come up with, I'm going to start there.

# What is the input?
The input will be a positive integer.

# What is the output? (i.e. What should the code return?)
We want the output to return a string that represents the comma-separated version of that integer. i.e. 1000000 becomes 1,000,000.

# What are the steps needed to solve the problem?
steps:
A) determine how many digits are in the integer, and then convert the interger into an array that consists of those individual digits represented as strings.
B) run a calculation (~divide by 3) to determine how many commas to insert. Should be sufficient to insert a comma always btw the 3rd and 4th digit, 6th and 7th, 9th and 10th, etc. Will need to re-confirm the syntax for inserting a value into an array at a specific index position.
C) Re-combine the array of digits (and now commas) back into a single string value.

=end

# 1. Initial Solution
def separate_comma(int)
  array = int.to_s.chars
  digits = array.count
  num_commas = digits / 3
  first_comma = digits % 3
  if first_comma == 0
    first_comma = 3
  end
  if digits <= 3
    result = array.join
  elsif digits <= 6
    result = array.insert(first_comma,',').join
  elsif digits <= 9
    result = array.insert(first_comma,',').insert((first_comma+4),',').join
  else result = 'too big :-( '
  end
  return result
end


# 2. Refactored Solution

def separate_comma(int)
  digits = int.to_s.chars.count
  if digits % 3 == 0
    first_comma = 3
    else first_comma = digits % 3
  end
  if digits <= 3
    result = int.to_s
  elsif digits <= 6
    result = int.to_s.chars.insert(first_comma,',').join
  elsif digits <= 9
    result = int.to_s.chars.insert(first_comma,',').insert((first_comma+4),',').join
  else result = 'too big :-( '
  end
  return result
end

#Fully Refactored Solution found online -- I understand all of it except I wouldn't have been able to find each_slice using the core ruby docs for array and string. It does look to be an enumerator method though that iterates across given n-size blocks of elements. The reversing makes sense as a nice alternative to dealing with modelos.

def separate_comma(number)
  number.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
end

#testing
puts separate_comma(123)
puts separate_comma(12334)
puts separate_comma(199999)
puts separate_comma(19999999)
puts separate_comma(1000980039)

