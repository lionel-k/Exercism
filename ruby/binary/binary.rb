# Convert a binary number, represented as a string (e.g. '101010'),
# to its decimal equivalent using first principles.
class Binary
  ERROR_MESSAGE = 'A valid binary number contains only 0 and 1'

  def self.to_decimal(binary_number)
    binary_size = binary_number.size
    if non_a_valid_binary_number(binary_number, binary_size)
      raise ArgumentError, ERROR_MESSAGE
    end
    binary_number.split('').each_with_index.map do |digit, index|
      digit.to_i * (2 ** (binary_size - index - 1))
    end.reduce(:+)
  end

  def self.non_a_valid_binary_number(binary_number, binary_size)
    (binary_number.count('0') + binary_number.count('1')) != binary_size
  end
end

module BookKeeping
  VERSION = 3
end

