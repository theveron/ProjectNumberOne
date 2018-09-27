# Method name: print_square
# Input: a number n
# Returns: Nothing
# Prints: an n-by-n grid of *'s

def print_line(count)
  (1..count).each do |i| # or, equivalently, for i in (1..count)
    print "*"            # This prints a single "*"
  end
  print "\n"   # This forces the output to the next line, like hitting "return"
end

def print_square(dimension)
  (1..dimension).each do |i| # or, equivalently, for i in (1..dimension)
    print_line(dimension)         
  end
end

if __FILE__ == $PROGRAM_NAME
  print_square(1)

  print "\n\n\n" 

  print_square(2)

  print "\n\n\n" 

  print_square(3)

  print "\n\n\n" 

  print_square(10)
end