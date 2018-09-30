# Method name: hot_or_cold(num_to_guess)
# Input: a single number, num_to_guess
# Returns: Nothing
# Behavior: Prompts the user to guess the number "num_to_guess", saying "hot" or
#           "cold" depending on whether the user's guess is too high or too low.
#           Once the user has guessed correctly, the method prints a victory
#           message and returns.
#
# This is meant to be a demonstration of how command-line user input works.

def get_user_guess
    print "Guess a number and press enter: "
    gets.chomp.to_i  # See below for what this does
  end
  
  def hot_or_cold(num_to_guess)
    # This is called a "while loop"
    # "while true" will loop for ever, unless something inside the loop tells
    # us to stop.  In our case, we'll stop the while loop once a user guesses
    # correctly.
  
    # Hint: you might want to put some temporary print/puts/p statements
    # in this method while you're filling it out, so you can tell
    # everything is working as your expect.
  
    while true
      guess = get_user_guess()   # "guess" is now an integer
  
      if guess < num_to_guess    # The guess is too cold
        puts "too cold"
      elsif guess > num_to_guess # The guess is too hot
        puts "too hot"
      else                       # The guess is juuuust right
        puts "juuuust right"
  
        # This "return" will make the program return from hot_or_cold, even from
        # inside the while loop.
        return
      end
    end
  end
  
  if __FILE__ == $PROGRAM_NAME
    # rand(1000) returns a random integer between 0 and 999, so this method call
    # starts the "Hot or Cold" game with a random number to guess.
  
    puts "Welcome to Hot or Cold!"
    puts "We've picked a number between 0 and 999. Can you guess it?"
    hot_or_cold(rand(1000))
  end
  