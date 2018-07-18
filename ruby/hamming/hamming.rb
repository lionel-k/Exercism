# Calculate the Hamming difference between two DNA strands.
class Hamming
  def self.compute(strand1, strand2)
    return 0 if (strand1 == '' && strand2 == '') || (strand1 == strand2)
    return 1 if (strand1.length == 1 && strand2.length == 1) && (strand1 != strand2)
  end
end
