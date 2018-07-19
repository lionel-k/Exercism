module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
# Calculate the Hamming difference between two DNA strands.
class Hamming
  def self.compute(strand1, strand2)
    # if (strand1 == '' && strand2 == '') || (strand1 == strand2)
    #   0
    # elsif (strand1.length == 1 && strand2.length == 1) && (strand1 != strand2)
    #   1
    # else
    #   2
    # end
    diff = 0
    strand1.length.times do |i|
      diff += 1 if strand1[i] != strand2[i]
    end
    diff
  end
end
