# Two-fer or 2-fer is short for two for one. One for you and one for me.
class TwoFer
  def self.two_fer(name = 'you')
    "One for #{name}, one for me."
  end
end

module BookKeeping
  VERSION = 1
end

print TwoFer.two_fer('Alice')
print TwoFer.two_fer
