# Given a year, report if it is a leap year.
class Year
  def self.leap?(year)
    (year % 4).zero? && (!(year % 100).zero? || (year % 400).zero?)
  end
end

module BookKeeping
  VERSION = 3
end
