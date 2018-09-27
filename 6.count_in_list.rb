# Method name: count_in_list(list, item_to_count)
# Inputs:      1. a list of anything, 2. an item for us to count in the list
# Returns:     The number of times our item is contained in the input list
# Prints:      Nothing

# --- NOTE ---
# Ruby has a built-in method to do this, but the purpose of this kata is
# to write it yourself.
#
# See: http://www.ruby-doc.org/core-2.1.2/Array.html#method-i-count

def count_in_list(list, item_to_count)
    count = 0
    total = 0
    for item in list.each
        if item == item_to_count 
            count = count + 1 
            total = count 
        end
    end
    
    return total
end

if __FILE__ == $PROGRAM_NAME
    p count_in_list([1,2,3], 1)  == 1
    p count_in_list([1,1,3], 1)  == 2
    p count_in_list([1,1,1,1], 1) == 4
    p count_in_list([2,2,3], 2) == 2
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?
end