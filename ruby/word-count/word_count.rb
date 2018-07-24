# Given a phrase, count the occurrences of each word in that phrase.
class Phrase
  WORD_REGEX = /\b[\w|']+\b/i

  def initialize(phrase)
    @words = phrase.downcase.scan(WORD_REGEX)
  end

  def word_count
    @words.each_with_object(Hash.new(0)) { |word, counts| counts[word] += 1 }
  end
end

module BookKeeping
  VERSION = 1
end
