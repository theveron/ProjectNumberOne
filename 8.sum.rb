# Method name: sum
# Input: a list of numbers
# Returns: the SUM of all the numbers in the list
# Prints: Nothing
#
# In English, the "sum" method takes as input a list of numbers and
# returns the SUM of all the numbers in the list

def sum(list)
    total = 0
    count = 0
    list.each do |item|
        if list.count > 1
            total = item + total
        else 
            total = item
        
        end
    end
    return total
end

if __FILE__ == $PROGRAM_NAME
  p sum([1]) == 1
  p sum([0]) == 0
  p sum([-1]) == -1
  p sum([1, -1]) == 0
  p sum([0, 10, 0, 20]) == 30
  p sum([-111, -111, -111]) == -333
  p sum([11, 22, 33]) == 66
end
