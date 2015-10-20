# Leap Years

# I worked on this challenge with Fatma & Abe.

# Your Solution Below

def leap_year?(year)
  #PSEUDOCODE
  #every four years is a leap year
  #2012,2016,2020 are leap years
  #check if input is divisble 4
  #2000 is a leap year because it is divisible by 400
  #1900 is NOT a leap year because its divisble by 100 but not 400

  year % 4 == 0 && (year % 100 !=0 || year % 400 ==0)

end