require 'date'

# Given a year, report if it is a leap year.
class Year
  class << self
    def leap?(year)
      (divisible_by_4?(year) && !divisible_by_100?(year)) || (divisible_by_4?(year) && divisible_by_100?(year) && divisible_by_400?(year))
    end

    private

    def divisible_by_4?(year)
      (year % 4).zero?
    end

    def divisible_by_100?(year)
      (year % 100).zero?
    end

    def divisible_by_400?(year)
      (year % 400).zero?
    end
  end
end

module BookKeeping
  VERSION = 3
end


# class << self
#     def square(square_number)
#       if non_existing_square_number(square_number)
#         raise ArgumentError, ERROR_MESSAGE
#       end
#       (2**square_number) / 2
#     end

#     def total
#       1.upto(CHESS_SIZE).inject { |sum, n| sum + square(n) }
#     end

#     private

#     def non_existing_square_number(square_number)
#       square_number <= 0 || square_number > CHESS_SIZE
#     end
#   end
