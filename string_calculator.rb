class StringCalculator
  # define class method add to implement the string calculator logic which takes an string input
  def self.add(numbers)
    computed_numbers = numbers.split(",").map { |number| number.include?("\n") ? number.split("\n") : number }
    computed_numbers.flatten.map(&:to_i).sum
  end
end
