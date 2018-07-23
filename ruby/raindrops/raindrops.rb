# Convert a number to a string,
# the contents of which depend on the number's factors.

# If the number has 3 as a factor, output 'Pling'.
# If the number has 5 as a factor, output 'Plang'.
# If the number has 7 as a factor, output 'Plong'.
# If the number does not have 3, 5, or 7 as a factor,
# just pass the number's digits straight through.
class Raindrops
  # FACTORS = [3, 5, 7].freeze
  def self.convert(number)
    result = ''
    result += 'Pling' if (number % 3).zero?
    result += 'Plang' if (number % 5).zero?
    result += 'Plong' if (number % 7).zero?
    result = number.to_s if result == ''
    result
  end
end

module BookKeeping
  VERSION = 3
end
