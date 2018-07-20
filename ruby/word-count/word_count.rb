# Given a phrase, count the occurrences of each word in that phrase.
class Phrase
  WORD_REGEX = '\w+\'*+\w+|\d'.freeze
  def initialize(phrase)
    @words = phrase.downcase.scan(/#{WORD_REGEX}/)
  end

  def word_count
    @words.inject({}) do |result, word|
      result.merge(word => @words.count(word))
    end
  end
end

module BookKeeping
  VERSION = 1
end
