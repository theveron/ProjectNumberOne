# Method name: print_pyramid
# Input: a number n
# Returns: Nothing
# Prints: a pyramid consisting of "*" characters that is "n" characters tall at its tallest

require_relative "./11.print_triangle"

def print_pyramid(height)
    print_triangle(height)
    total = 0

    r = height..1
    (r.first).downto(r.last).each do |i|
        i = i - 1
        total = print_line(i) 
    end
end

if __FILE__ == $PROGRAM_NAME
  print_pyramid(4)
end


