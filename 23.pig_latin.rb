# Method name: pig_latin
# Inputs:      A string representing a single word (i.e., no spaces)
# Returns:     The word translated into "pig latin"
# Prints:      Nothing

# Note #1
# There are two rules for translating something into "pig latin":
#   1. If a word begins with a consonant or sequence of consonants, move the
#      sequence of consonants  to the end of the word and then append "ay"
#   2. If a word begins with a vowel, just append "ay"
#
# See: http://en.wikipedia.org/wiki/Pig_Latin#Rules
#
# Here are some examples:
# pig_latin("happy") == "appyhay"

def pig_latin(word)
    $consonant_clusters = ["gl", "st", "tr", "fl", "sm"]
    $consonant_clusters.each do |i|
         $consonant_clusters = i
    end
    
    # =~ either the offset of the match from the string if it is found, otherwise nil.
    if word =~ (/\A[aeiou]/i)
        word = word + 'ay'
    elsif word =~ (/\A[^aeiou]/i)  
        if word =~ (/\A(gl|st|tr|fl|sm)/i)
            match = /\A(gl|st|tr|fl|sm)/i.match(word)
            word = match.post_match + match.to_s + 'ay'
        else
            match = /\A[^aeiou]/i.match(word)
            word = match.post_match + match.to_s + 'ay'
        end
    end
    return word
end

if __FILE__ == $PROGRAM_NAME
    p pig_latin("happy") == "appyhay"
    p pig_latin("duck")  == "uckday"
    
    p pig_latin("glove") == "oveglay" # Notice what happened to "gl"
    p pig_latin("smile") == "ilesmay" 
    p pig_latin("trash") == "ashtray" 
    p pig_latin("floor") == "oorflay" 
    p pig_latin("stupid") == "upidstay" 

    p pig_latin("egg")   == "eggay"
    p pig_latin("inbox") == "inboxay"
    p pig_latin("eight") == "eightay"
end
# puts /gl/.match('glove')