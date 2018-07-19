module BookKeeping
  VERSION = 3
end
# Calculate the Hamming difference between two DNA strands.
class Hamming
  def self.compute(strand1, strand2)
    if strand1.length != strand2.length
      raise ArgumentError, 'The length of the 2 strands should be equal'
    end
    diff = 0
    strand1.length.times do |i|
      diff += 1 if strand1[i] != strand2[i]
    end
    diff
  end
end
