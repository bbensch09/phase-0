#acct_groups chal 5.6

# I worked on this challenge by myself.

# I spent 1 hour on this challenge.
=begin
# 4. REFLECTION
What was the most interesting and most difficult part of this challenge?
I really enjoyed this challenge. I actually thought it was going to be much harder upon first reading it, because I didn't realize the pattern would start to repeat itself pretty quickly, and so my core idea of distributing the remainders across groups worked pretty easily. Most difficult was in refactoring, simply because I thought there'd be more I could do, and I looked around online a good deal but mostly found other solutions that approached the problem slightly differently but with a similar complexity of solution. I didn't really find any useful enumerables, but I was able to remove a few redundant lines like determining the total # of groups in advance.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
Very much so, feeling better with each challenge.

Was your approach for automating this task a good solution? What could have made it even better?
I think my solution was pretty solid. I could work on making the printout slightly more legible, but otherwise it does exactly what I wanted it to do.

What data structure did you decide to store the accountability groups in and why?
I stored my groups as arrays. Thinking about printing the output out in a prettier format, I'd proabbly instead want to convert my arrays to Hashes so that I can give each group a name, and then print out the names of groups and their members. But arrays worked perfectly fine for the core exercise.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
Unfortunately not really. I struggled to refactor this very far.

# 0. PSEUDOCODE

So I think I'm going to want to default to building groups of 4, since I know that my requirements are that everyone is in a group of at least 3 and a max of 5. To determine number of groups, I'll probably want to divide by 4, and then do some calculations to either distribute the remainder among my already established groups, or if the remainder is greater than the number of groups (which will be the case in small class sizes of 6 or 7), then I'll instead need to form a new group out of the remainder and then taking one from an existing group. For large groups above 8, it should work pretty naturally without too much complexity. i.e. 22 people % 4 yields a remainder of 2, and so I'd just put those 2 extra peopel in the first 2 groups.

Also, if I have time, I'll probably want to make it start by randomizing the order using a .shuffle method that I can call on an array of names, so that I get different groupings every time I run it.

# Input: an array of people names
# Output: a 2-dimensional array of groups, where each group contains the names of the group members, and where group sizes are at least 3 and no more than 5.
# Steps: As outlined above.

=end
# 1. Initial Solution
def grouper(array)
  array = array.shuffle
  p num_groups = array.length / 4
  p remainder = array.length % 4
  groups = Array.new
  array.each_slice(4) {|slice| groups.push(slice)}
  if array.length == 6
    groups[1].push(groups[0][3])
    groups[0].pop

    elsif remainder == 0
      return groups
    elsif remainder == 1
    groups[0].push(groups[-1][0])
    groups.pop
    elsif remainder == 2
    groups[0].push(groups[-1][0])
    groups[1].push(groups[-1][1])
    groups.pop
  end
p groups
end
# 3. Refactored Solution

def grouper(array)
  array = array.shuffle
  remainder = array.length % 4
  groups = Array.new
  array.each_slice(4) {|slice| groups.push(slice)}
  if array.length == 6
    groups[1].push(groups[0][3])
    groups[0].pop
    elsif remainder == 1
    groups[0].push(groups[-1][0])
    groups.pop
    elsif remainder == 2
    groups[0].push(groups[-1][0])
    groups[1].push(groups[-1][1])
    groups.pop
  end
  p groups
end

#TESTING DRIVER CODE
# islands_foxes = ['Alan Alcesto','Daniel Andersen','James Artz','Darius Atmar','Brian Bensch','Nicola Beuscher','Logan Bresnahan','William Brinkert','Scott Chou','Bernice Anne W Chua','Abraham Clark','Jon Clayton','Jacob Crofts','Michael Duke','Amaar Fazlani','Solomon Fernandez','Edward Gemson','Chris Gomes','Will Granger','Christopher M. Guard','Ryan Ho','Igor Kazimirov','Walter Kerr','Karla King','Kris Albert Lee','Becky Lehmann','Malia Lehrer','Carolina Medellin','Timothy Meixell','Chris Miklius','Joshua Monzon','Shea Munion','Trevor Newcomb','Aleksandra Nowak','Fatma Ocal','Van Phan','Luis Fernando Plaz','Natalie Polen','Alicia Quezada','Nimi Samocha','Zach Schatz','Tal Schwartz','Pratik Shah','Josh Shin','Shawn Spears','Sasha Tailor','Nil Thacker','Natasha Thapliyal','Sabrina Unrein','Brian Wagner','Clinton Weber','Gregory Wehmeier','Michael Whelpley','Alexander Williams','Peter N Wood','Ryan Zell','Caroline A.','Laura C.','John D.','Katy D.','Adell H.','James H.','Matt H.','Michael H. ','Peter H. ','Lorena Mesa','morganmccrory@gmail.com','nealcpeters@gmail.com','Morgan O.','Celeen R.','Gary S.','Iulia S.','Raj S. ','sarah.taurchini@gmail.com','Caitlyn Y. ','Emmanuel','extra1','extra2']
islands_foxes = ['p1','p2','p3','p4','p5','p6','7','p8']
# p islands_foxes.length
grouper(islands_foxes)

