# Given a DNA strand, return its RNA complement (per RNA transcription).
class Complement
  REPLACEMENTS = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }.freeze
  NUCLEOTIDES_TO_REPLACE = REPLACEMENTS.keys.join
  def self.of_dna(strand)
    return '' unless strand.gsub(/[#{NUCLEOTIDES_TO_REPLACE}]/, '') == ''
    strand.gsub(/[#{NUCLEOTIDES_TO_REPLACE}]/, REPLACEMENTS)
  end
end

module BookKeeping
  VERSION = 4
end
