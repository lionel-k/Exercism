# Convert a phrase to its acronym.
class Acronym
  def self.abbreviate(phrase)
    phrase.upcase.scan(/\w+/).map { |word| word[0] }.join
  end
end

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end
