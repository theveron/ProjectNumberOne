#Method name: count_max
# Inputs:      A list of numbers
# Returns:     The number of times the largest number in the list
#              appears in the list
# Prints:      Nothing

require_relative "./1.max"
require_relative "./6.count_in_list"

def count_max(list)
    item_to_count = max(list)
    count_in_list(list, item_to_count)
end

if __FILE__ == $PROGRAM_NAME
    p count_max([10, 1,2,10,10]) == 3
    p count_max([150, 230,230,10,10]) == 2
    p count_max([1, 1,5,5,5,5]) == 4
end