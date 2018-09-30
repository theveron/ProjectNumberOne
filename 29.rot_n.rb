# Method name: rot_n
# Inputs:      A String to be encoded plus an integer to "rotate" by
# Returns:     A ROT-N encoded message
# Prints:      Nothing

require_relative "./28.rot13.rb"

def shift_char(c, base, offset)
    (((c.ord - base) + offset) % 26 + base).chr
end

def rot_n(string, n)
    string.chars.map do |c|
        case c
        when 'a'..'z'
          shift_char(c, 'a'.ord, n)
        when 'A'..'Z'
          shift_char(c, 'A'.ord, n)
        else
          c
        end
    end.join
end

if __FILE__ == $PROGRAM_NAME
    p rot13("The Quick Brown Fox Jumps Over The Lazy Dog") == rot_n("The Quick Brown Fox Jumps Over The Lazy Dog", 13)
end

