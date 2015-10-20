# I worked on this challenge with Fatma & Abe.


# Your Solution Below

def valid_triangle?(a, b, c)
    #PSEUDOCODE
    #   #with triangles the hypotenus can't be more than the sum of two shorter sides (i.e. a+b < c)
    #   #a + c > b?
    #   #a + b > c?
    #   #all must be true

  (a+b) > c && (a+c) > b && (b+c) > a

end





