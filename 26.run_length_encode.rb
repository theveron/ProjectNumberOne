# Method name: run_length_encode
# Inputs:      A String to be encoded
# Returns:     A String that has been "run-length encoded"
# Prints:      Nothing


def run_length_encode(string)
    string = string.gsub(/(.)\1*/) {$&.length.to_s + $1}
    return string
end


if __FILE__ == $PROGRAM_NAME
  p run_length_encode("WWWWWWAAAAAAWWWWWWAAAAAABBBBBB") == "6W6A6W6A6B"
  p run_length_encode("A") == "1A"
  p run_length_encode("AB") == "1A1B"
  p run_length_encode("Mississippi") == "1M1i2s1i2s1i2p1i"
end