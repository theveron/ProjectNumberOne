#Method name: max
# Input: a list of numbers
# Returns: the largest number in the list
# Prints: Nothing

def max(list)
    max_so_far = list.first     # or, equivalently, list[0]
    list.each do |item|         # or, equivalently, for item in list 
        if item > max_so_far    # if current item is greater than max so far
            max_so_far = item   # set max so far to current item
        end
    end 

    return max_so_far           #we've gone through entire list, return max so far
end 

if __FILE__ == $PROGRAM_NAME    # "p" prints something to the scrren in a way that's better for debugging
    p max([1,2,3]) == 3
    p max([0, -100, 50, -200]) == 50
    p max([-200, -400, -100, -300]) == -100
    p max([0]) == 0
    p max([1]) == 1
    p max([-1]) == -1
    p max([11, 11, 11]) == 11
    p max([-22, -11, -22]) == -11
end

