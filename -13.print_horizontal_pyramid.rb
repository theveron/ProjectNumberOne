# Method name: print_horizontal_pyramid
# Input: a number n
# Returns: Nothing
# Prints: a pyramid consisting of "*" characters that is "n" characters tall at its tallest

def print_horizontal_pyramid(height)
    (1..height).each do |i|
        puts "*"
        (i..height).each do |y|
            puts ""
        end
    end
end

if __FILE__ == $PROGRAM_NAME
  print_horizontal_pyramid(5)
end