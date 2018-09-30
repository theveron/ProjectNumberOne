# Method name: run_length_decode
# Inputs:      A String that has been "run-length encoded"
# Returns:     The original string
# Prints:      Nothing

# This takes a run-length encoded string and "reconstructs" the original string.
require_relative "./26.run_length_encode.rb"

def run_length_decode(string)
    string = string.gsub(/(\d+)(\D)/) {$2 * $1.to_i}
    string
end

if __FILE__ == $PROGRAM_NAME
    p run_length_decode(run_length_encode("WWWWWWAAAAAAWWWWWWAAAAAABBBBBB")) == "WWWWWWAAAAAAWWWWWWAAAAAABBBBBB"
    p run_length_decode(run_length_encode("A")) == "A"
    p run_length_decode(run_length_encode("AB")) == "AB"
    p run_length_decode(run_length_encode("Mississippi")) == "Mississippi"
end