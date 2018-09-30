# Method name: commas
# Inputs:      A number, n
# Returns:     A string representing the input, with commas inserted into the
#              correct position.
# Prints:      Nothing

def commas(num)
    num_to_s = num.to_s.reverse
    newNum = num_to_s.scan(/.{1,3}/).join(",").reverse

    return newNum 
end

if __FILE__ == $PROGRAM_NAME
    p commas(123)     == "123"
    p commas(1234)    == "1,234"
    p commas(12345)   == "12,345"
    p commas(1234567) == "1,234,567"
    p commas(8383940232148) == "8,383,940,232,148"
end
