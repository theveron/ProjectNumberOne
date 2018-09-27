#Method name: mean
# Input: a list of numbers
# Returns: the MEAN (aka average) of all the numbers in the list
# Prints: Nothing
#
# See: https://www.freemathhelp.com/arithmetic-mean.html
# See: http://www.ruby-doc.org/core-2.1.2/Array.html#method-i-length

require_relative "./8.sum"

def mean(list)
  puts total = sum(list)
  puts total = total/list.count.to_f
  return total
end

if __FILE__ == $PROGRAM_NAME
    p mean([5, 2]) == 3.5
    p mean([5, 5]) == 5.0
    p mean([10, 20, 30]) == 20.0
    p mean([-20, -20, -30, 57.5]) == -3.125
end