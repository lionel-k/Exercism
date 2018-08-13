# Given a string of digits,
# output all the contiguous substrings of length n in that string.
class Series
  ERROR_MESSAGE = 'The size should be <= of the length of the digits.'.freeze

  def initialize(digits)
    @digits = digits
    @length = digits.size
  end

  def slices(size)
    raise ArgumentError, ERROR_MESSAGE if size > @length
    0.upto(@length - size).map do |i|
      @digits[i..-1].scan(/.{#{size}}/).first
    end
  end
end
