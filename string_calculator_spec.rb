# Require RSpec, It is a testing tool for Ruby, created for behavior-driven development (BDD)
require 'rspec'
# Require the StringCalculator class
require_relative 'string_calculator'

# Describe the behavior of the StringCalculator class
RSpec.describe StringCalculator do
  # Describe the add method
  describe ".add" do
    # Test case: returns 0 for an empty string
    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    # Test case: returns the number for a single number string
    it "returns the number for a single number string" do
      expect(StringCalculator.add("1")).to eq(1)
    end

    # Test case: returns the sum of two numbers separated by comma
    it "returns the sum of two numbers separated by comma" do
      expect(StringCalculator.add("1,5")).to eq(6)
    end

    # Test case: returns the sum of any amount of numbers separated by comma
    it "returns the sum of any amount of numbers separated by comma" do
      expect(StringCalculator.add("1,2,3,4")).to eq(10)
    end

    # Test case: handles new lines between numbers
    it "handles new lines between numbers" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    # Test case: supports different delimiters
    it "supports different delimiters" do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end

    # Test case: throws an exception for negative numbers
    it "throws an exception for negative numbers" do
      expect { StringCalculator.add("-1,2,-3") }.to raise_error("negative numbers not allowed: -1, -3")
    end
  end
end
