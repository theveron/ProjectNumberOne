# Method name: min
# Input: a list of numbers
# Returns: the SMALLEST number in the list
# Prints: Nothing

def min(list)
    min_so_far = list[0]        # set min so far to an empty array
    # for item in list.each 
    list.each do |item|         # declare an empty array 'item' then loop the array
        if item < min_so_far    # loop through by 'item' to compare with min_so_far
            min_so_far = item   
        end 
    end

    return min_so_far
end 

if __FILE__ == $PROGRAM_NAME
    # "p" prints something to the screen in a way that's better for debugging
  
    p min([1, 2, 3]) == 1
    p min([0, -100, 50, -200]) == -200
    p min([-200, -400, -100, -300]) == -400
    p min([0]) == 0
    p min([1]) == 1
    p min([-1]) == -1
    p min([11, 11, 11]) == 11
    p min([-22, -11, -22]) == -22
end