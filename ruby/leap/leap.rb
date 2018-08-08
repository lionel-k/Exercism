# Given a year, report if it is a leap year.
class Year
  def self.leap?(year)
    (divisible_by_4?(year) && (not divisible_by_100?(year))) || (divisible_by_4?(year) && divisible_by_100?(year) && divisible_by_400?(year)) || (divisible_by_400?(year))
  end

  def self.divisible_by_4?(year)
    (year % 4).zero?
  end

  def self.divisible_by_100?(year)
    (year % 100).zero?
  end

  def self.divisible_by_400?(year)
    (year % 400).zero?
  end
end


module BookKeeping
  VERSION = 3
end
