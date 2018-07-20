# Calculate the moment when someone has lived for 10^9 seconds.
class Gigasecond
  ELAPSED_TIME = 1_000_000_000
  def self.from(time)
    time + ELAPSED_TIME
  end
end

module BookKeeping
  VERSION = 6
end
