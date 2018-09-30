# Method name: pad_array
# Inputs:      An array, a minimum size, and a padding element
# Returns:     An array which has been padded with the padding element
#              if the array is smaller than the minimum size
# Prints:      Nothing

# For example,
#
#  pad_array([1,2,3], 5, "waffles") == [1,2,3,"waffles","waffles"]
#  pad_array([1,2,3], 4, "waffles") == [1,2,3,"waffles"]
#  pad_array([1,2,3], 3, "waffles") == [1,2,3]

# Note #1
# Remember, use Array#push if you want to append something to an array
# http://www.ruby-doc.org/core-2.1.2/Array.html#method-i-push
#
# It works like this:
#
#  array = [1,2,3]
#  array.push("waffles")
#  array == [1,2,3,"waffles"]

def pad_array(array, min_size, pad_with)
    newArray = array.push(pad_with) 
    if min_size > newArray.count
        array_size = min_size - newArray.count
        array.fill(pad_with, array.size, array_size)
    elsif min_size <= 0
        newArray = []
    else 
        newArray = newArray[0..min_size-1]
    end
    return newArray
end

if __FILE__ == $PROGRAM_NAME
    p pad_array([1,2,3], 6, "waffles") == [1,2,3,"waffles","waffles","waffles"]
    p pad_array([1,2,3], 5, "waffles") == [1,2,3,"waffles","waffles"]
    p pad_array([1,2,3], 4, "waffles") == [1,2,3,"waffles"]
    p pad_array([1,2,3], 3, "waffles") == [1,2,3]
    p pad_array([1,2,], 3, "waffles") == [1,2,"waffles"]
    p pad_array([2], 2, "waffles") == [2,"waffles"]
    p pad_array([2], 0, "waffles") == []

end