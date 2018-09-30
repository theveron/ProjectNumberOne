# Method name: to_roman
# Inputs:      A number
# Returns:     A String representing the number in roman numerals
# Prints:      Nothing

def to_roman(num)
    numbers_to_roman = {
        1000 => "M",  
        900 => "CM",  
        500 => "D",  
        400 => "CD",
        100 => "C",  
        90 => "XC",  
        50 => "L",  
        40 => "XL",  
        10 => "X",  
        9 => "IX",  
        5 => "V",  
        4 => "IV",  
        1 => "I",  
    }

    roman = ""
    numbers_to_roman.each do |value, letter|
      roman << letter*(num / value)
      num = num % value
    end
    return roman
end

if __FILE__ == $PROGRAM_NAME
    p to_roman(1) == "I"
    p to_roman(3) == "III"
    p to_roman(4) == "IV"
    p to_roman(123) == "CXXIII"
    p to_roman(1234) == "MCCXXXIV"
end