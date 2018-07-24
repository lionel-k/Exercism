# Convert a number to a string,
# the contents of which depend on the number's factors.

# If the number has 3 as a factor, output 'Pling'.
# If the number has 5 as a factor, output 'Plang'.
# If the number has 7 as a factor, output 'Plong'.
# If the number does not have 3, 5, or 7 as a factor,
# just pass the number's digits straight through.
class Raindrops
  FACTORS = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }.freeze

  def self.convert(number)
    result = FACTORS.collect do |factor, output|
      output if (number % factor).zero?
    end.join
    return result unless result.empty?
    number.to_s
  end
end

module BookKeeping
  VERSION = 3
end
