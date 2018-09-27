# Method name: longest_string(list)
# Inputs:      a list of strings
# Returns:     the longest string in the list
# Prints:      Nothing

def longest_string(list)
    return list.max { |x,y| x.size <=> y.size }           
end


# if __FILE__ == $PROGRAM_NAME
    p longest_string(["z", "aa", "cccc", "bbb"])
    p longest_string(["z", "aa", "ccc", "bbbb"])
    p longest_string(["bbbbb", "cc", "dddd"])
# end