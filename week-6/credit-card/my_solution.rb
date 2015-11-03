# Class Warfare, Validate a Credit Card Number

=begin
# Reflection
What was the most difficult part of this challenge for you and your pair?
- I feel like the hardest thign was figuring out how to chain our instance methods to each other within the class. We tried doing it as one big chain together, but kept getting errors, so ultimately chained them each to the necessary method prior using self.method.

What new methods did you find to help you when you refactored?
- We didn't learn any new methods but simply combined some sub methods to make things shorter & cleaner.

What concepts or learnings were you able to solidify in this challenge?
- clarified how methods within the same class can be called by other methods in that class.

=end
# I worked on this challenge [with: Tal Schwarz].
# I spent 1.25 hours on this challenge.

# Pseudocode

# Input: 16 digit credit card number (need to validate length)
# Output: true or false
# Steps:
# starting at second last digit, double every other digit
# add the individual digits from the resulting array (splitting anything greater than 10 into the component digits)
# mod 10 that result. if the remainder is zero return true, otherwise return false


# Initial Solution

# # Don't forget to check on initialization for a card length
# # of exactly 16 digits

# class CreditCard
#   def initialize(card_number)
#           raise ArgumentError.new ("Not a valid 16 digit card number") if card_number.to_s.length != 16
#           @card_number = card_number
#   end

# def check_card
#   self.check_sum
# end


# def check_sum
#   self.sum_digits
#   if @sum % 10 == 0
#     true
#   else
#     false
#   end
# end

# def split_to_digit
#   @split_card = @card_number.to_s.split(//).map!{|p| p.to_i}
# end

# def double_every_other_digit
#   self.split_to_digit
#   @doubled_digits = @split_card
#   i = 0
#   8.times do
#     @doubled_digits[i] = @doubled_digits[i] * 2
#     i += 2
#   end
# @doubled_digits
# end

# def sum_digits
#   self.double_every_other_digit
#   @sum = 0
#   @split_digits = @doubled_digits.join.split(//).map!{|p| p.to_i}
#   @split_digits.each{|x| @sum +=x}
# end

# end

# cc = CreditCard.new(6666666666666666)
# p cc.split_to_digit
# p cc.double_every_other_digit
# p cc.sum_digits
# p cc.check_card


# Refactored Solution

class CreditCard
  def initialize(card_number)
          raise ArgumentError.new ("Not a valid 16 digit card number") if card_number.to_s.length != 16
          @card_number = card_number
  end

def check_card
  self.sum_digits
  if @sum % 10 == 0
    true
  else
    false
  end
end

def split_to_digits_and_double
  @doubled_digits = @card_number.to_s.split(//).map!{|p| p.to_i}
   i = 0
  8.times do
    @doubled_digits[i] = @doubled_digits[i] * 2
    i += 2
  end
@doubled_digits
end

def sum_digits
  self.split_to_digits_and_double
  @sum = 0
  @split_digits = @doubled_digits.join.split(//).map!{|p| p.to_i}
  @split_digits.each{|x| @sum +=x}
end

end

