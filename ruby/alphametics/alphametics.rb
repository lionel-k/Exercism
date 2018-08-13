# Alphametics is a puzzle where letters in words are replaced with numbers.
class Alphametics
  def self.solve(input)
    operands = input.split(' == ')
    lefts = operands[0].split(' + ')
    right = operands[1]
    chars = input.scan(/\w/).uniq.sort
    (0..9).to_a.permutation(chars.size).to_a.each do |combo|
      dict = Hash[chars.zip combo]
      converted_left = convert_operand(lefts, dict)
      converted_right = convert_operand([right], dict)
      next if leading_digits_zero?([converted_left, converted_right])
      sum_left = converted_left.inject { |sum, n| sum.to_i + n.to_i }
      sum_right = converted_right.first.to_i
      return dict if sum_left == sum_right
    end
    {}
  end

  def self.convert(word, dict)
    word.chars.map { |c| dict[c] }.join
  end

  def self.convert_operand(array, dict)
    array.map { |word| convert(word, dict) }
  end

  def self.leading_digits_zero?(operands)
    operands.flatten.inject(false) do |result, operand|
      result || operand[0].to_i.zero?
    end
  end
end

module BookKeeping
  VERSION = 4
end
