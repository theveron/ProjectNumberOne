# Method name: to_roman
# Inputs:      A number
# Returns:     A String representing the number in English
# Prints:      Nothing


require 'humanize'

def to_english(string)
    return (string).humanize
end

# alternative
def in_words(int)
    numbers_to_name = {
        1000000 => "million",
        1000 => "thousand",
        100 => "hundred",
        90 => "ninety",
        80 => "eighty",
        70 => "seventy",
        60 => "sixty",
        50 => "fifty",
        40 => "forty",
        30 => "thirty",
        20 => "twenty",
        19 => "nineteen",
        18 => "eighteen",
        17 => "seventeen", 
        16 => "sixteen",
        15 => "fifteen",
        14 => "fourteen",
        13 => "thirteen",              
        12 => "twelve",
        11 => "eleven",
        10 => "ten",
        9  => "nine",
        8  => "eight",
        7  => "seven",
        6  => "six",
        5  => "five",
        4  => "four",
        3  => "three",
        2  => "two",
        1  => "one"
      }
    str = ""
    numbers_to_name.each do |num, name|
        if int == 0
            return str
        elsif int.to_s.length == 1 && int/num > 0
            return str + "#{name}"      
        elsif int < 100 && int/num > 0
            return str + "#{name}" if int%num == 0
            return str + "#{name} " + in_words(int%num)
        elsif int/num > 0
            return str + in_words(int/num) + " #{name} " + in_words(int%num)
        end
    end
end

if __FILE__ == $PROGRAM_NAME
    p to_english(1)     == "one"
    p to_english(12)    == "twelve"
    p to_english(123)   == "one hundred and twenty-three"
    p to_english(1234)  == "one thousand, two hundred and thirty-four"
    p to_english(12345) == "twelve thousand, three hundred and forty-five"
    puts ""
    p in_words(1)     == "one"
    p in_words(12)    == "twelve"
    p in_words(123)   == "one hundred twenty three"
    p in_words(1234)  == "one thousand two hundred thirty four"
    p in_words(12345) == "twelve thousand three hundred forty five"
end