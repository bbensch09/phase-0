#Attr Methods

# I worked on this challenge by myself.

# I spent 1 hour on this challenge. start 12:15pm

class NameData
  attr_accessor :name
  def initialize
    @name = "Brian"
  end
  # def name
  #   @name
  # end
end

class Greetings
  def initialize
    @NameData = NameData.new
  end

  def hello
    puts "Hello #{@NameData.name}! How wonderful to see you today"
  end
end

greet = Greetings.new
greet.hello # puts "Hello Student! How wonderful to see you today."

=begin
# Reflection

RELEASE 1
What are these methods doing?
- They are creating a profile class that is initialized with Kim the Cartographer's info. Within the class methods are defined for updating the instance variables, which are then done so by calling 'instance_of_profile.change_my_state' methods, which expectedly updates the object with the new info.

How are they modifying or returning the value of instance variables?
We're modifing the instance variables by calling a class.method which does that variable modification. It's also using a newly introduced syntax where rather than inputing the arguments btw parentheses, the method is defined to expect an = new notation, as below.
METHOD:
def change_my_age=(new_age)
    @age = new_age
end
DRIVER CODE:
instance_of_profile.change_my_age = 28

RELEASE 2
What changed between the last release and this release?
In this version we've dropped the necessity of defining age explicitly using the 'what_is_age' method, and have instead used an attr_reader to make age a readable attribute.

What was replaced?
Instead of that previous method, we now just have the one line: 'attr_reader :age'

Is this code simpler than the last?
Yes, but seems like we can do more to simplify my making all attributes readable or writable as appropriate.

RELEASE 3
What changed between the last release and this release?
We've now gone further and dropped the 'change_my_age' method from the previous release.

What was replaced?
Intead of that method, we're simply calling the 'attr_writer :age' method at the beginning.
Is this code simpler than the last?
Yes.

RELEASE 4
No questions, code updated in release_4.rb.

RELEASE 5
No questions, code updated in release_5.rb.

RELEASE 6
What is a reader method?
- A reader method allows you to retrieve the value in instance variables from outside the class. It's usually very simple, such as below, which was used throughout the first release.
  def what_is_age
    @age
  end

What is a writer method?
- Similar to reader, except that a writer method allows you to write new data to an instance variable from outside the class.

What do the attr methods do for you?
-attr_reader and attr_writer let you simply assign variables as able to be read or written to without defining methods explicitly. Even better, you can use attr_accessor to cover both your bases.

Should you always use an accessor to cover your bases? Why or why not?
-You could, but it'd be considered code smell if not actually necessary. You should only make variables accessible to be read and written to if you actually need to be able to modify them or read from them. Otherwise, you might be exposing yourself to security threats or just extra debugging effort down the road.

What is confusing to you about these methods?
-Nothing really, all makes sense. I guess I was confused by how to make all attributes accessible with one command in the last part of release 5, and determined that there's not really a term for 'all variables', but that you can list them out with commas, so you don't have to repeat the 'attr_accessor' text multiple times.

=end