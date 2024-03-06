class StringCalculator
  # define class method add to implement the string calculator logic which takes an string input
  def self.add(numbers)
    # Check if the input string contains negative numbers and raise an exception if it does
    raise "negative numbers not allowed: #{numbers.scan(/-\d+/).join(', ')}" if numbers.include?('-')

    # Default delimiter is set to comma
    delimiter = ','

    # If the input string starts with "//", it indicates a custom delimiter is specified
    if numbers.start_with?("//")
      # Extract the custom delimiter from the input string
      delimiter = numbers[2]

      # Remove the delimiter declaration from the input string
      numbers = numbers[4..-1]
    end

    # Split the input string into an array of numbers based on the delimiter or newline character
    # Convert each element of the array to an integer and sum them up
    numbers.split(/#{delimiter}|\n/).map(&:to_i).sum
  end
end
