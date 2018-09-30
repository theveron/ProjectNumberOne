# Method name: fibonacci
# Inputs:      A single non-negative integer, n
# Returns:     The n-th Fibonacci number (see below)
# Prints:      Nothing

# The Fibonacci numbers are the numbers in the following sequence:
#
# n       0  1  2  3  4  5  6   7   8   9  10  11  12  13  14
# fib(n)  0  1  1  2  3  5  8  13  21  34  55  89 144 233 377
#
# If you can't see the pattern, you start with the numbers 0 and 1. From there,
# every subsequent number is the sum of the previous two numbers. That is,
#
# 0 + 1 = 1
# 1 + 1 = 2
# 1 + 2 = 3
# 2 + 3 = 5
# 3 + 5 = 8
# etc...

def fibonacci_recursive(n)
    return 0 if n == 0
    return 1 if n == 1
    fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2)
  end
   
  def fibonacci_iterative(n)
    array = [0,1]
    until (array.length - 1) >= n
      array << (array[-1] + array[-2])
    end
    array[n]
  end

if __FILE__ == $PROGRAM_NAME
  # These are the two "base cases", so if anything is wrong here,
  # everything computed from these numbers will almost certainly be wrong.
  p fibonacci_recursive(0) == 0
  p fibonacci_recursive(1) == 1

  # This is the first "computed" number, so if something is wrong with our
  # computation there's a good chance it will show up here.
  p fibonacci_iterative(2) == 1

  # The 5th Fibonacci number is 5 and is the only one with this property, so
  # it serves as a good sanity check.
  p fibonacci_iterative(5) == 5

  # This serves as a good input for the "common case"
  p fibonacci_iterative(123) == 22698374052006863956975682

  # Want to see if your fibonacci method can handle big inputs?
  # Uncomment this:
  #
  # "The 1,000,000th Fibonacci number is #{fibonacci_iterative(1000000)}"
  #
  # !!!WARNING!!!
  # This might grind your computer to a halt. If that happens, press CTRL+c.
  # That's "control" and "c" at the same time.
end