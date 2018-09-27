# Method name: shortest_string(list)
# Inputs:      a list of strings
# Returns:     the shortest string in the list
# Prints:      Nothing

def shortest_string(list)
    return list.min { |x,y| x.size <=> y.size }  
end

if __FILE__ == $PROGRAM_NAME
    p shortest_string(["z", "aa", "cccc", "bbb"])
    p shortest_string(["zzz", "aa", "cccc", "bbbbb"])
    p shortest_string(["bbbbbb", "ccccc", "dddd"])
end
  