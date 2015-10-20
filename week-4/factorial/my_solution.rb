# Factorial

# I worked on this challenge with Fatma and Abe.


# Your Solution Below

def factorial(number)
  # if number == 0
  #   return 1
  # else
    i = number
    result = 1
    while i > 0
      result = result * i
      i -= 1
    end
  return result
end