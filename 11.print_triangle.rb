# Method name: print_triangle
# Input: a number n
# Returns: Nothing
# Prints: a right triangle consisting of "*" characters that is "n" characters tall

def print_line(count)
    (1..count).each do |i|
      print "*"         # This prints a single "*"
    end
  
    print "\n"  # This forces the output to the next line, like hitting "return"
  end
  
def print_triangle(height)
    total = 0
    (1..height).each do |i|
        total = print_line(i)
    end
end
  
  
  if __FILE__ == $PROGRAM_NAME
    print_triangle(1)
  
    print "\n\n\n" 
  
    print_triangle(2)
  
    print "\n\n\n" 
  
    print_triangle(3)
  
    print "\n\n\n" 
  
    print_triangle(10)
  end