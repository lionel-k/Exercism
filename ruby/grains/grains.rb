# Calculate the number of grains of wheat on a chessboard
# given that the number on each square doubles.
class Grains
  CHESS_SIZE = 64
  def self.square(square_number)
    if non_existing_square_number(square_number)
      raise ArgumentError, 'Square number should be included between 0 and 64'
    end
    (2**square_number) / 2
  end

  def self.total
    1.upto(CHESS_SIZE).inject { |sum, n| sum + square(n) }
  end

  private_class_method

  def self.non_existing_square_number(square_number)
    square_number <= 0 || square_number > CHESS_SIZE
  end
end

module BookKeeping
  VERSION = 1
end
