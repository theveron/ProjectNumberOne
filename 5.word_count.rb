# Method name: word_count
# Input: A string representing an English sentence
# Returns: The number of words in the sentence
# Prints: Nothing

def word_count(string)
    return string.split.size
end
  
  if __FILE__ == $PROGRAM_NAME
    p word_count("apple") == 1
    p word_count("123...321") == 1
    p word_count("one two three") == 3
    p word_count("This sentence has five words.") == 5
    p word_count("No-spaces-here") == 1
    p word_count("") == 0  # Empty string
    p word_count(" ") == 0 # A string consisting of a single space
end