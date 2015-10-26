# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution - Brian Bensch
def my_array_finding_method(array, letter)
  #PSEUDOCODE
  #I want to use the selct method (as discussed in the release 0 reading) and set a condition that tests whether the letter argument is contained in each element.
  # this works for a given letter, but i don't know how to pass through the argument variable
  # array.select {|w| w =~ /[t]/}
  #trying to figure out why the below does not work...? I confirmed that if you run include? just on the array, it wil search for an exact element to match the argument taken, meaning it only returns true if you provie a full word like "want" or "pets". Ostensibly then the final line 16 below should also work, but doesn't.
  #array.include?(letter) #returns true when letter == "want"
  # array.select {|word| word.include?(letter)} #should also work, but doesn't...

  #eventually solved this by discovering that the mix of strings and integers in the array was causing problems. Apparently include? only works on strings and so had to convert all elements in array to strings first before calling include.
  #SOLUTION
  array.select { |word| word.to_s.include? letter}

end

#test
#puts my_array_finding_method(i_want_pets,"t")

def my_hash_finding_method(hash, thing_to_find)
  #PSEUDOCODE
  #similar to above, I'm going to want to this time filter or include for whether or not the given values in the key-value pairs in the hash are equal to the age argument
  #this only returns the FIRST key which matches they thing_to_find value
  #hash.key(thing_to_find)

  #this returns the hash of matching outcomes, rather than the array of keys only
  #hash.keep_if {|a,b| b.to_i == thing_to_find}

  #SOLUTION
  new_hash = hash.keep_if {|a,b| b == thing_to_find}
  new_hash.keys
  end

#test
# puts my_hash_finding_method(my_family_pets_ages,3)

# Identify and describe the Ruby method(s) you implemented.
# 1) For this first one I used the select method which basically iterates through each element in the array. I then had to convert each element to a string, since I was going to be then calling the include? method to see if each individual element contained the letter provided in the argument
#
# 2) For the next one I ended up using two methods but couldn't figure out how to combine them into one refactored line. First, I called .keep_if on the hash, which iterates through each key-value pair and keeps it based on whether the value ("b" in my block) is equal to the thing we're looking for, in the case the age of the dogs. This first method returns back another hash though, so I created a new variable called new_hash, which I called the .keys method on, to return just the dog names that match the age we're looking for.

=begin
# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#
=end