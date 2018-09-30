# Method name: bottles
# Inputs:      A number, n
# Returns:     Nothing
# Prints:      The text for "99 bottles", starting at the input number and counting down to 1

def bottles(start_number)
    puts "Counting down..."
    start_number.downto(1) do |i|
        nextnum = 0
        if i == 1 && nextnum
            currentnum = i.to_s + " bottle"
        else 
            nextnum = (i - 1).to_s
            currentnum = i.to_s + " bottles"
        end

        puts currentnum + " of beer on the wall, " + currentnum + " of beer."
        if nextnum.to_i != 0
            puts "Take one down, pass it around, " + nextnum + " bottles of beer on the wall!"
        end 
    end
    puts "Take one down, pass it around, no more bottles of beer on the wall!"
end

if __FILE__ == $PROGRAM_NAME
  # What *should* this print?
  bottles(5)
end

# See http://ruby-doc.org/core-2.0/Integer.html#method-i-downto or try this:
#
#   puts "Counting down..."
#   10.downto(1) do |i|
#     puts i
#   end
#   puts "Blast off!"

# Hint #2:
# The priority is getting this method to work, even if your code is messy, but
# try to isolate the part of each line that changes depending on the number of
# bottles and move it to its own method.  This makes handling the
# singular/plural logic much easier.
#
# Yes, that means you'll need to define another method here on your own. If you
# decide to try this approach, give it a sensible name. :)