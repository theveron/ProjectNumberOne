# Method name: mode
# Inputs:      An arbitrary array -- could be of anything
# Returns:     The item in the array which occurs most frequently (the mode)
# Prints:      Nothing


def mode(array)
    freq = array.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    return array.max_by { |v| freq[v] }
end

if __FILE__ == $PROGRAM_NAME

  # The mode of a single data point should be that data point
  p mode([-1234.50]) == -1234.50

  # The mode of identical data points should be that data point
  p mode(["hello"] * 100) == "hello"

  # The mode doesn't depend on the order of the data
  p mode(["a", "a", "a", "b"]) == "a"
  p mode(["b", "a", "a", "a"]) == "a"
  p mode(["a", "b", "a", "a", "b"]) == "a"
end