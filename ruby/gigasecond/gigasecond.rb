# Calculate the moment when someone has lived for 109 seconds.
class Gigasecond
  def self.from(time)
    time + 1_000_000_000
  end
end

module BookKeeping
  VERSION = 6
end
