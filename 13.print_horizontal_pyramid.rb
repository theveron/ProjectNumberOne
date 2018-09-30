# Method name: print_horizontal_pyramid
# Input: a number n
# Returns: Nothing
# Prints: a pyramid consisting of "*" characters that is "n" characters tall at its tallest

def print_horizontal_pyramid(height)
    i = 1
    h= height
    w= height

    i.upto(h) do
        w.times do
            print ' '
        end

        (2 * i - 1).times do
            print '*'
        end

        print "\n"

        w -= 1
        i += 1
    end
end

if __FILE__ == $PROGRAM_NAME
  print_horizontal_pyramid(5)
end