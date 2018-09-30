# Method name: rot13
# Inputs:      A String to be encoded in ROT13
# Returns:     A ROT13-encoded string
# Prints:      Nothing

def rot13(string)
    string = string.tr!("A-Za-z", "N-ZA-Mn-za-m")
    return string
end

if __FILE__ == $PROGRAM_NAME
  # See http://www.rot-n.com/ to generate test inputs and outputs
  p rot13("The Quick Brown Fox Jumps Over The Lazy Dog") ==
    "Gur Dhvpx Oebja Sbk Whzcf Bire Gur Ynml Qbt"
end