##What does puts do?
  Puts prints the final output of the program to the console, but does not return anything. It stand for put "string".
##What is an integer? What is a float?
  An integer is a postive or negative whole number (i.e. -3,-2,-1,0,1,2,3)
##What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
  Integer division is when the quotient is rounded down to it's closest integer, meaning that remainders are not kept, nor is the result allowed to include any decimals, since the output must be an integer. Float division is what we would consider normal arithmetic, and preserves the exact specificity of the numbers (i.e. 10/3 = 3.3333 in float division, but = 3 using integer division.)

##release 2
```ruby
p 365*24
8760
=> 8760

p 10*365*24*60
5256000
=> 5256000
```
##How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby handles the core arithmetic functions for the most part exactly as you would expect. The only quirk is that it will default to treating numerical values as integers unless you define them as floats containing a decimal value, or convert them to floats using .to_f.
##What is the difference between integers and floats?
Integers are positive or negative whole numbers (and zero), whereas floats represent the full range of rational numbers and can contain any level of specificity (i.e. 1.234567)
##What is the difference between integer and float division?
Integer division is when the quotient is rounded down to it's closest integer, meaning that remainders are not kept, nor is the result allowed to include any decimals, since the output must be an integer. Float division is what we would consider normal arithmetic, and preserves the exact specificity of the numbers (i.e. 10/3 = 3.3333 in float division, but = 3 using integer division.)
##What are strings? Why and when would you use them?
Strings are simple a sequence of letters or numbers. They cannot be used in core arithmetic because they don't represent numerical value, even if they contain numbers. '12' + '12' would simply become '1212' because the string captures the characters not the value.
##What are local variables? Why and when would you use them?
Local variables simply variables that you define in a given ruby file that are recorded into the ruby shell's local memory and can have values stored to them and reused in other methods. They must start with a lowercase letter and should use underscores rather than CamelCase for variable names with ultiple words. We'll generally use them for challenges like this or if we only needed to store temporary data for a user.
##How was this challenge? Did you get a good review of some of the basics?
It was fine. Not at all difficult, but somewhat tedious, namely because the instructions were unclear about where our results files should actually be submitted. Each of the the sub-challenges said to submit the URL from the main challenge, whereas it was only at the bottom of the main challenge that we were told to link the URLs in this num-letters.md file.

#URLs for sub-challenges
#4.2.1
https://github.com/bbensch09/phase-0/blob/feature-wk4/week-4/defining-variables.rb
#4.2.2
https://github.com/bbensch09/phase-0/blob/feature-wk4/week-4/simple-string.rb
#4.2.3
https://github.com/bbensch09/phase-0/blob/feature-wk4/week-4/basic-math.rb
