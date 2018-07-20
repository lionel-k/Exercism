# Calculate the number of grains of wheat on a chessboard
# given that the number on each square doubles.
class Grains
  def self.square(square_number)
    if square_number <= 0 || square_number > 64
      raise ArgumentError, 'Square number should be included between 0 and 64'
    end
    (2**square_number) / 2
  end

  def self.total
    1.upto(64).inject { |sum, n| sum + square(n) }
  end
end

module BookKeeping
  VERSION = 1
end
