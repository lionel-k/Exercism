# Convert a phrase to its acronym.
class Acronym
  def self.abbreviate(phrase)
    phrase.upcase.scan(/\b[A-Z]/).join
  end
end

module BookKeeping
  VERSION = 4
end
