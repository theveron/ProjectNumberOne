# Method name: factorial
# Inputs:      A single non-negative integer, n
# Returns:     The factorial of n (see below)
# Prints:      Nothing

def factorial(n)
    newNum = n

    #easier way 
    #(1..n).inject(:*) || 1

    (1..n).each do |i|
        i = i - 1
        if i != 0
            newNum = newNum * i
        end
    end
    return newNum
end

if __FILE__ == $PROGRAM_NAME
  p factorial(1) == 1
  p factorial(2) == 2
  p factorial(3) == 6
  p factorial(4) == 24
  p factorial(5) == 120
end