# Alphametics is a puzzle where letters in words are replaced with numbers.
class Alphametics
  def self.solve(input)
    operands = input.split(" == ")
    left = operands[0]
    right = operands[1]
    chars = input.scan(/\w/).uniq
  end
end

module BookKeeping
  VERSION = 4
end

# input = 'I + BB == ILL'
# expected = { 'B' => 9, 'I' => 1, 'L' => 0 }
# assert_equal expected, Alphametics.solve(input)



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
