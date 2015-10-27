# REFLECTION
=begin
Release 5: Reflect
On your own, add a commented reflection section to your gps2_2.rb file. Answer the following questions in your reflection:

What did you learn about pseudocode from working on this challenge?
- I learned that it's far easier if you're thorough in your pseudocode even going so far as giving names to the different methods you're going to create, since it makes it that much easier to reference your code structure and flesh out the initial solution.
What are the tradeoffs of using Arrays and Hashes for this challenge?
- We pretty much decided off of the get-go that Hashes would be better since we wanted to be able to use item as a argument when updating the list. With an array, we'd have had to know what index # a given item was in, or search for it to retrieve the index number, whereas Hash's have a natural key-value system where we could just call the item by it's name.
What does a method return?
- A method by default returns the last calculation in a method. It also will return any value you explicitly tell it to using the "return" method.
What kind of things can you pass into methods as arguments?
- You can pass strings, integers, or objects, such as other methods, as arguments to a method.
How can you pass information between methods?
- Without using classes, the easiest way is to use one method as the argument for another, as we did here.
What concepts were solidified in this challenge, and what concepts are still confusing?
- I didn't know or realize that one method could be an argument for another method prior to this challenge, so that was the primary learning.
=end

#PSEUDO CODE
=begin
1)Create new list define for new_list which will create a new hash with key-values of item_type:quantity
name: create_list

2) method for adding an item and a given quanity -- takes 3 args (list,item, quanity)
name: add_item
3) remove from the list -- take 2 args (list, item)
name: remove_item
4) update quantities -- take 3 args (item, quanity_new)
name: update_item
5) print it out with some formatting
name: print_list
##can't create methods within other methods
##naming convention -- methods should be verb-focused primarily
##spaces between arguments is preferred styling
##don't stress out about trying to get code onto one line; more important that it's readable and efficient
##no need to worry too much about speed & code execution at this point - i.e. symbols vs. strings for hash keys
=end

def create_list
  Hash.new
end

def add_item(list, item, quantity)
  list[item] = quantity
end

def remove_item(list, item)
  #list[item] = 0
  list.delete(item)
end

def update_item(list, item, quantity)
  list[item] = quantity
  #add_item(list, item, quantity)
  #more readable to have this method as is even though it is basically the exact same code;
end

def print_list(list)
  #puts list
  list.each do |a,b|
    puts a.to_s + " - " + b.to_s
  end
end

my_list = create_list
add_item(my_list, 'Lemonade', 2)
add_item(my_list, 'Tomatoes', 3)
add_item(my_list, 'Onions', 1)
add_item(my_list, 'Ice Cream', 4)
remove_item(my_list, 'Lemonade')
update_item(my_list, 'Ice Cream', 1)
print_list(my_list)
