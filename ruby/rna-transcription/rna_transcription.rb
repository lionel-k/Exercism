# Given a DNA strand, return its RNA complement (per RNA transcription).
class Complement
  def self.of_dna(strand)
    return '' unless strand.gsub(/[GCTA]/, '') == ''
    strand.gsub(/[GCTA]/, 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U')
  end
end

module BookKeeping
  VERSION = 4
end
