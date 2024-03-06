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
  end
end
