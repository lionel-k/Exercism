# Given a phrase, count the occurrences of each word in that phrase.
class Phrase
  def initialize(phrase)
    # regex = ([\w]+['][\w]+)
    # @words = phrase.downcase.split(/\W+/)
    # @words = phrase.downcase.split(/[\w]+['][\w]+/)
    # \w+'*+\w
    # @words = phrase.downcase.split(/(?=.*\w)^(\w|')+$/)
    # @words = phrase.downcase.scan(/\w+'*+\w*/)
    @words = phrase.downcase.scan(/\w+'*+\w+|\d/)
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
