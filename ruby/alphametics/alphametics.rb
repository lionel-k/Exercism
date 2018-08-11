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

# base                   guess[1]*1000 + guess[0]*100 + guess[6]*10 + guess[2]
# ball                   guess[1]*1000 + guess[0]*100 + guess[4]*10 + guess[4]
# games  guess[3]*10000 + guess[0]*1000 + guess[5]*100 + guess[2]*10 + guess[6]

# input = 'I + BB == ILL'
# input = 'ACA + DD == BD'
# expected = { 'B' => 9, 'I' => 1, 'L' => 0 }
# assert_equal expected,
# Alphametics.solve(input)

# def convert(char, dict)
#   dict[char]
# end

# def convert(word, dict)
#   word.chars.map { |c| dict[c] }.join.to_i
# end

# def convert_operand(array, dict)
#   array.map { |word| convert(word, dict) }.reduce(:+)
# end

# operands = input.split(' == ')
# lefts = operands[0].split(' + ')
# right = operands[1]
# print convert_operand(lefts, expected)
# print convert_operand([right], expected)

# puts convert('B', expected)
# print convert('ILL', expected)
# print 'ILL'.chars
# print (0..9).to_a.permutation(3).to_a

# start count_combinations( k , n ) {
#  if (k = n) return 1;
#  if (k > n/2) k = n-k;
#  res = n-k+1;
#  for i = 2 by 1 while i < = k
#   res = res * (n-k+i)/i;
#  end for
#  return res;
# end

# def combination(k, n)
#   0.upto(n) do |i|
#     res << i
#     1.upto(k) do |j|
#       print "#{i}#{j}"
#       res << j
#     end
#   end
# end
